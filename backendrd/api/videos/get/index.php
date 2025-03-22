<?php
require_once __DIR__ . '/../../../config/cors.php';
require_once __DIR__ . '/../../../config/db.php';
header('Content-Type: application/json');
// Función para manejar errores
function handleError($message) {
    http_response_code(500);
    error_log($message); // Registrar el error en un archivo de log
    echo json_encode(['error' => 'Ocurrió un error en el servidor.']);
}
try {
    // Uso de declaraciones preparadas para mayor seguridad
    $stmt = $pdo->prepare("SELECT  a.id, a.idcanal, b.nombre, titulo, subtitulo, codigo, fecha 
                            FROM videos a
                            INNER JOIN canal b on a.idcanal=b.id
                            ORDER BY a.id desc;");
    $stmt->execute();
    $datos = $stmt->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($datos);
} catch (Exception $e) {
    handleError($e->getMessage());
}
?>