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

## Technical Project Report: Forensic Analysis of the TCP 3-Way HandshakeDeveloper: [Your Name]Date: March 17, 2026Program: Innovation Fellowship (Cyber Security)### 1. Project OverviewObjective: To perform a granular forensic examination of the Transmission Control Protocol (TCP) connection process using packet sniffing tools.Problem Solved: Understanding how "Stateful" connections are established is critical for identifying network anomalies, such as scanning or DDoS attacks, that bypass simple firewalls.Core Tech Stack:Analyzer: Kali LinuxTarget: Ubuntu Server (running an Apache web service)Forensic Tool: Wireshark (GUI) and tcpdump (CLI)### 2. Implementation & ConfigurationCapture Methodology: Initiated a live capture on the eth0 interface using Wireshark, filtering specifically for tcp.flags.syn == 1 to isolate connection attempts.Traffic Generation: Used the curl command from a Mint VM to request a page from the Ubuntu server, triggering the handshake sequence.Sequence Tracking: Analyzed the Relative Sequence Numbers to verify how the client and server synchronize data streams.### 3. Technical FindingsHandshake Validation:SYN: Client sent a packet with a random Sequence Number ($Seq=0$ relative).SYN-ACK: Server responded, acknowledging the client ($Ack=1$) and sending its own Sequence Number ($Seq=0$).ACK: Client finalized the connection by acknowledging the server’s sequence ($Ack=1$).Observation: Confirmed that the "Window Size" was negotiated during this phase, determining how much data could be sent before an acknowledgment is required.

## Security AnalysisGoal: To identify how the 3-way handshake can be weaponized by attackers and defended by security professionals.Analysis CategoryTechnical Detail & ObservationPrimary Threat VectorReconnaissance (Port Scanning): Attackers use "Stealth Scans" (Half-open scanning) where they send a SYN, receive a SYN-ACK, but then send a RST (Reset) instead of an ACK. This identifies an open port without completing a full connection log.Vulnerability AssessmentResource Exhaustion: If a server receives thousands of SYN packets but never receives the final ACK, it keeps those connections "half-open" in memory, eventually crashing the service (SYN Flood).Detection StrategyStateful Inspection: A SOC analyst looks for a high ratio of SYN packets compared to ACK packets coming from a single IP address, which is a signature of a SYN flood or a port scan.Hardening RecommendationSYN Cookies: Enable "SYN Cookies" on the Linux kernel (via sysctl). This allows the server to handle connection requests without dropping them or exhausting memory during a flood.### 4. Professional Skill MappingForensics: Deep packet inspection (DPI), hex stream analysis, and protocol headers.Network Defense: Understanding of TCP/IP stack vulnerabilities and MITRE ATT&CK T1595 (Active Scanning).Tools: Expert-level navigation of Wireshark filters and packet flow.Next Steps: This forensic knowledge will be directly applied to my AWS Certified Security path, specifically when configuring VPC Flow Logs and Security Groups to filter malicious handshake patterns at scale.

## Key Takeaway
By analyzing the raw data movement, I have strengthened my ability to troubleshoot end-user connectivity issues. This lab proves that a solid understanding of networking fundamentals is essential for high-level IT Support and Security analysis.

## Why This Matters for IT Support
IT Support is the backbone of any organization, and understanding packet-level data is key to rapid resolution. By monitoring the SYN/ACK sequence, I can identify **TCP Retransmission** issues. 

For example, if I capture a **SYN** packet but no corresponding **SYN/ACK**, I can immediately conclude that the issue is likely a firewall blocking the port or a downed server service. This allows me to resolve end-user tickets faster by accurately isolating the failure within the specific layer of the **OSI Model**, preventing unnecessary troubleshooting on the client-side.
