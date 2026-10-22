CS 454 Midterm

## Prerequisites & Tools Used
* **Host Machine:** Windows 11
* **Hypervisor:** Microsoft Hyper-V Manager
* **Virtual Machine:** Kali Linux 
* **Containerization & Orchestration:** Docker Engine, Docker Compose, and k3d (Kubernetes)
* **Testing:** `curl` and command prompt (via SSH)

## VM Networking Details & Manual Setup
The Kali Linux VM was connected to the **Hyper-V Default Switch**, which provides outbound internet access and places the VM on an internal NAT network. This allowed the Windows host to route HTTP requests directly to the VM's internal IP address (`<INSERT_KALI_IP>`) without manual port forwarding rules. The VM was accessed via SSH from the Windows host terminal.

---

## Environment 1: Docker Compose

### Build the Image
```bash
docker build -t cs454-midterm:latest .