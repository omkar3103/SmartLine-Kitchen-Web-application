<?php
if(isset($_POST['kitchenType'])) {
    $kitchenType = $_POST['kitchenType'];
    switch ($kitchenType) {
        case 'L-shaped':
            header("Location: L-shape.html");
            break;
        case 'U-shaped':
            header("Location: u-shape.html");
            break;
        case 'Island-shaped':
            header("Location: one-wall.html");
            break;
        case 'One-wall':
            header("Location: one-wall2.html");
            break;
        default:
            header("Location: index.html");
            break;
    }
} else {
    header("Location: index.html");
}
?>
