# Steps to build armbian images

1. Download ubuntu image for build VM
   ```
   wget https://cloud-images.ubuntu.com/releases/22.04/release/ubuntu-22.04-server-cloudimg-amd64.img
   ```

2. Resize image
   ```
   qemu-img resize ubuntu-22.04-server-cloudimg-amd64.img +30G
   qemu-nbd -c /dev/nbd0 ubuntu-22.04-server-cloudimg-amd64.img
   parted
   -> resizepart 1 34.5GB
   -> quit
   qemu-nbd -d /dev/nbd0
   ```

3. Add password entry to image

   This will set the root password to 'ubuntu'
   ```
   mkdir /tmp/mnt
   guestmount -a ubuntu-22.04-server-cloudimg-amd64.img -i /tmp/mnt
   sed -i 's/^root:\*/root:\$6\$oaTfTxnE\.4IDa1F9\$vkTjwFPGcdRdhm8JL0iz0Ts6dLWglzQWHIieRvc6Q\/bopx5EFSL7DkHrS1l8RYR9YmEaIesJt6cuwu8AkCNRX1/' /tmp/mnt/etc/shadow
   guestunmount /tmp/mnt
   ```

4. Boot image

   Boot the image in e.g. qemu/kvm, or some other hypervisor that supports qcow2 images

5. Enable network and resize ext4 to new image size
   ```
   netplan set ethernets.enp1s0=true
   resize2fs /dev/vda1
   ```

6. Install ssh and create host key
   ```
   apt-get install ssh
   ssh-keygen -A
   systemctl restart ssh
   ```

7. Clone Armbian build system
   ```
   git clone https://github.com/armbian/build.git
   ```

8. Add Meshed Banana configs
 
