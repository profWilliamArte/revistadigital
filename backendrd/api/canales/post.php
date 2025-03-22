<?php
require_once __DIR__ . '/../../config/cors.php'; // Incluir configuración de CORS
require_once __DIR__ . '/../../config/db.php';  // Incluir configuración de la base de datos
header('Content-Type: application/json');       // Establecer el tipo de contenido como JSON

// Obtener datos del cuerpo de la solicitud
$data = json_decode(file_get_contents('php://input'), true);

// Validar que los campos obligatorios estén presentes
if (empty($data['nombre']) || empty($data['ruta'])) {
    http_response_code(400); // Bad Request
    echo json_encode(['error' => 'Debe proporcionar los campos "nombre" y "ruta".']);
    exit;
}

// Asignar valores
$nombre = trim($data['nombre']); // Limpiar espacios en blanco
$ruta   = trim($data['ruta']);   // Limpiar espacios en blanco
$idestatus = 1; 

try {
    // Validar que el nombre no esté duplicado
    $stmt = $pdo->prepare("SELECT id FROM canal WHERE nombre = :nombre");
    $stmt->execute(['nombre' => $nombre]);
    if ($stmt->fetch(PDO::FETCH_ASSOC)) {
        http_response_code(400); // Bad Request
        echo json_encode(['error' => 'El nombre del canal ya está en uso.']);
        exit;
    }
    // Validar que la ruta no esté duplicada
    $stmt = $pdo->prepare("SELECT id FROM canal WHERE ruta = :ruta");
    $stmt->execute(['ruta' => $ruta]);
    if ($stmt->fetch(PDO::FETCH_ASSOC)) {
        http_response_code(400); // Bad Request
        echo json_encode(['error' => 'La ruta del canal ya está en uso.']);
        exit;
    }

    // Preparar la consulta SQL para insertar un nuevo canal
    $stmt = $pdo->prepare("INSERT INTO canal (idestatus, nombre, ruta) VALUES (:idestatus, :nombre, :ruta)");

    // Ejecutar la consulta con los valores proporcionados
    $stmt->execute([
        'idestatus' => $idestatus,
        'nombre' => $nombre,
        'ruta'   => $ruta
    ]);
 
    // Respuesta exitosa
    echo json_encode([
        'message' => 'Canal creado correctamente',
        'id'      => $pdo->lastInsertId() // Devolver el ID del canal recién creado
    ]);
   
} catch (Exception $e) {
    // Manejo de errores
    error_log($e->getMessage()); // Registrar el error en un archivo de logs
    http_response_code(500);     // Internal Server Error
    echo json_encode(['error' => 'Ha ocurrido un error interno.']);
}
 