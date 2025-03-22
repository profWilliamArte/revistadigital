<?php
require_once __DIR__ . '/../../config/cors.php';
require_once __DIR__ . '/../../config/db.php';
header('Content-Type: application/json');

// Obtener datos del cuerpo de la solicitud
$data = json_decode(file_get_contents('php://input'), true);

// Validar que al menos uno de los campos opcionales esté presente
if (empty($data['idcanal']) && empty($data['titulo']) && empty($data['subtitulo']) && empty($data['codigo']) && empty($data['fecha'])) {
    http_response_code(400);
    echo json_encode(['error' => 'Debe proporcionar todos los campos obligatorios']);
    exit;
}

// Asignar valores (permitir NULL si no se proporcionan)
$idcanal    = isset($data['idcanal']) ? trim($data['idcanal']) : null;
$titulo     = isset($data['titulo']) ? trim($data['titulo']) : null;
$subtitulo  = isset($data['subtitulo']) ? $data['subtitulo'] : null;
$codigo     = isset($data['codigo']) ? $data['codigo'] : null;
$fecha      = isset($data['fecha']) ? $data['fecha'] : null;

try {
    // Validar que el nombre no esté duplicado
    if ($titulo !== null) {
        $stmt = $pdo->prepare("SELECT id FROM videos WHERE titulo = :titulo");
        $stmt->execute(['titulo' => $titulo]);

        if ($stmt->fetch(PDO::FETCH_ASSOC)) {
            http_response_code(400);
            echo json_encode(['error' => 'El nombre del video ya está en uso']);
            exit;
        }
    }

    // Preparar la consulta SQL
    $stmt = $pdo->prepare("INSERT INTO videos (idcanal, titulo, subtitulo, codigo, fecha)
            VALUES (:idcanal, :titulo, :subtitulo, :codigo, :fecha)");

    // Ejecutar la consulta con los valores proporcionados
    $stmt->execute([
        'idcanal'       => $idcanal,
        'titulo'        => $titulo,
        'subtitulo'     => $subtitulo,
        'codigo'        => $codigo,
        'fecha'         => $fecha
    ]);

    // Respuesta exitosa
    echo json_encode(['message' => 'Video nuevo creado correctamente']);
} catch (Exception $e) {
    // Manejo de errores
    error_log($e->getMessage()); // Registrar el error en un archivo de logs
    http_response_code(500);
    echo json_encode(['error' => 'Ha ocurrido un error interno']);
}
?>