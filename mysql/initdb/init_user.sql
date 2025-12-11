CREATE USER 'clusterAdmin' @'%' IDENTIFIED BY 'C1uzt3rAdm7nPa55777';

GRANT ALL privileges ON *.* TO 'clusterAdmin' @'%' with grant option;

reset master;