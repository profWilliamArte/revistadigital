<?php
require_once __DIR__ . '/../../../config/cors.php';
require_once __DIR__ . '/../../../config/db.php';
header('Content-Type: application/json');
// Obtener el idgenero de los parámetros de la URL
$idcanal = isset($_GET['idcanal']) ? (int)$_GET['idcanal'] : null;
if ($idcanal === null) {
    http_response_code(400);
    echo json_encode(['error' => 'El campo idcanal es obligatorio']);
    exit;
}
try {
    // Preparar la consulta SQL de forma segura
    $stmt = $pdo->prepare("SELECT videos.id, videos.idcanal, videos.titulo, videos.subtitulo, videos.codigo, videos.fecha, canal.ruta from videos INNER JOIN canal on videos.idcanal=canal.id
WHERE idcanal = :idcanal ORDER BY id DESC");
    $stmt->execute(['idcanal' => $idcanal]);
    $datos = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($datos);
} catch (Exception $e) {
    // Registrar el error en los logs
    error_log($e->getMessage());
    http_response_code(500);
    echo json_encode(['error' => 'Ha ocurrido un error interno']);
}
?>