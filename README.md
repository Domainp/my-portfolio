# Linux Scavenger Hunt & Portfolio Setup

## 🛡️ Project Overview
This project demonstrates fundamental Linux administration and Git version control skills. I navigated a complex file system, provisioned a lab environment using shell scripts, and documented system artifacts.

## 🚀 Skills Demonstrated
* **File System Navigation:** Using `cd`, `ls -a`, and `pwd` to map hidden directories.
* **Environment Provisioning:** Executing remote shell scripts via `curl | bash`.
* **Artifact Collection:** Using Redirection (`>`) and Appending (`>>`) to log absolute paths.
* **Git Workflow:** Managing a professional repository with `add`, `commit`, and `push` to GitHub.

## 🔍 Scavenger Hunt Findings
The following critical system paths were identified and logged in `discovery.txt`:
1. **System Logs:** `/var/log/syslog`
2. **Hidden Flag:** Found in a 100-level generated maze at `/home/domain/maze/level_42/flag.txt`.

## 🛠️ Tools Used
* Ubuntu Linux
* Bash Shell
* Git & GitHub
# Session 04: Forensic Analysis of TCP 3-Way Handshake

## Project Overview
In this lab, I conducted a deep-dive forensic analysis of the TCP 3-way handshake using Wireshark and Linux command-line tools. Understanding how data moves at the packet level is the backbone of effective IT support and network troubleshooting.

## Skills Demonstrated
* **Packet Capture & Filtering:** Utilized Wireshark display filters (`tcp.flags.syn == 1`) to isolate connection attempts.
* **Forensic Logic:** Analyzed Raw Sequence (SEQ) and Acknowledgment (ACK) numbers to verify protocol integrity.
* **Linux Scripting:** Debugged and repaired infrastructure audit scripts (`lab_verify.sh`) to ensure operational compliance.
* **Version Control:** Managed project artifacts using Git and GitHub.

## Forensic Breakdown
In `packet_analysis.txt`, I documented the relationship between client and server sequence numbers:
1. **SYN:** Client sends Initial Sequence Number (ISN).
2. **SYN/ACK:** Server acknowledges by returning $ISN + 1$.
3. **ACK:** Client completes the handshake.



## Key Takeaway
By analyzing the raw data movement, I have strengthened my ability to troubleshoot end-user connectivity issues. This lab proves that a solid understanding of networking fundamentals is essential for high-level IT Support and Security analysis.

## Why This Matters for IT Support
IT Support is the backbone of any organization, and understanding packet-level data is key to rapid resolution. By monitoring the SYN/ACK sequence, I can identify **TCP Retransmission** issues. 

For example, if I capture a **SYN** packet but no corresponding **SYN/ACK**, I can immediately conclude that the issue is likely a firewall blocking the port or a downed server service. This allows me to resolve end-user tickets faster by accurately isolating the failure within the specific layer of the **OSI Model**, preventing unnecessary troubleshooting on the client-side.
