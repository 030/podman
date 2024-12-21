# podman

## installation

<https://podman.io/docs/installation/>

```bash
curl -L https://github.com/containers/podman/releases/download/v5.3.1/podman-remote-static-linux_amd64.tar.gz -o /tmp/podman.tar.gz && \
tar -xvf /tmp/podman.tar.gz -C /tmp
sudo mv /tmp/bin/podman-remote-static-linux_amd64 /usr/local/bin/podman
podman --version
```

## configuration

```bash
sudo apt remove qemu-system
```

```bash
podman machine rm --force
```

```bash
podman machine init
```

```bash
curl -L https://github.com/containers/gvisor-tap-vsock/releases/download/v0.8.1/gvproxy-linux-amd64 -o /tmp/gvproxy && \
sudo mv /tmp/gvproxy /usr/libexec/podman/
chmod +x /usr/libexec/podman/gvproxy
/usr/libexec/podman/gvproxy --version
```

```bash
curl -L https://gitlab.com/virtio-fs/virtiofsd/-/jobs/8484776667/artifacts/download?file_type=archive -o /tmp/virtiofsd.zip
unzip /tmp/virtiofsd.zip
./target/x86_64-unknown-linux-musl/release/virtiofsd --version
sudo mv ./target/x86_64-unknown-linux-musl/release/virtiofsd  /usr/libexec/podman/
```

```bash
podman machine --log-level=debug start
```

sgdfdgfaddf

```bash
qemu-system-x86_64 --version
```

```bash
cd /tmp
git clone https://gitlab.com/qemu-project/qemu.git
cd qemu
git checkout v9.2.0
```

https://wiki.qemu.org/Hosts/Linux

```bash
sudo apt-get install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev ninja-build
```

Other packages that are required as well (turned out after running make):

```bash
sudo apt install flex bison
```

```bash
mkdir build && \
cd build && \
../configure && \
make -j$(nproc)
```

```bash
sudo make install
```

```bash
qemu-system-x86_64 --version
```

should return: v9.2.0

```bash
podman machine ls
```

podman machine start stuck “Waiting for VM” indefinitely with qemu synchronous
exception on macOS M1 (#20776).

downgrading to 8.2.1

git checkout v8.2.1

## commands

Same commands as docker.

```bash
podman run \
  --detach \
  --tty \
  --publish 8080:80/tcp docker.io/library/httpd
```

```bash
podman logs --follow c5cd0b1cc1a2
```

```bash
podman top c5cd0b1cc1a
```

```bash
podman stop --all
```

```bash
podman rm --all
```

## build

```bash
podman build --platform linux/amd64,linux/arm64 -t my-image .
```

```bash
podman run \
  --detach \
  --tty \
  --publish 8080:80/tcp my-image
```

https://github.com/docker-library/httpd/tree/500ef8b71bdf49020ec5bffad2b100936c3f2fab/2.4/alpine

https://raw.githubusercontent.com/docker-library/httpd/500ef8b71bdf49020ec5bffad2b100936c3f2fab/2.4/alpine/httpd-foreground
