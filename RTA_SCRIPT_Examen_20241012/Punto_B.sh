#!/bin/bash
sudo fdisk /dev/sdc
n
p
1

+1G
n
p
2

+1G
n
p
3

+1G
n
e


n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n

+1G
n


wq
sudo mkfs.ext4 /dev/sdc1
sudo mkfs.ext4 /dev/sdc2
sudo mkfs.ext4 /dev/sdc3
sudo mkfs.ext4 /dev/sdc5
sudo mkfs.ext4 /dev/sdc6
sudo mkfs.ext4 /dev/sdc7
sudo mkfs.ext4 /dev/sdc8
sudo mkfs.ext4 /dev/sdc9
sudo mkfs.ext4 /dev/sdc10
sudo mkfs.ext4 /dev/sdc11
echo '/dev/sdc1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc5 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc6 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc7 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc8 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc9 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc10 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0' | sudo tee -a /etc/fstab
echo '/dev/sdc11 /Examenes-UTN/profesores ext4 defaults 0 0' | sudo tee -a /etc/fstab

