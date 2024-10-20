# hospital_monitoring_group
## Project Overview
The **Hospital Heart Monitoring System** automates the process of monitoring and recording patient heart rates, archiving logs, and securely backing them up to a remote server. This system was developed as part of the hospital’s infrastructure upgrade to improve data handling and patient monitoring.

### Features:
1. **Heart Rate Monitoring**: Continuously logs heart rate data with timestamps.
2. **Log Archival**: Archives heart rate logs with a timestamped file name.
3. **Secure Backup**: Moves archived logs to a directory and securely backs them up to a remote server.

---

## Scripts

### 1. `heart_rate_monitor.sh`
Records heart rate data and logs it to `heart_rate_log.txt` every second.

- **Usage**:
    ```bash
    ./heart_rate_monitor.sh
    ```
  The script prompts for a device name (e.g., `Monitor_A`) and starts logging heart rate data with a timestamp every second. The process runs in the background.

### 2. `archive_log.sh`
Archives the heart rate log file by renaming it with a timestamp.

- **Usage**:
    ```bash
    ./archive_log.sh
    ```
  The log file `heart_rate_log.txt` is renamed to `heart_rate_log.txt_YYYYMMDD_HHMMSS`.

### 3. `backup_archives.sh`
Moves archived log files to a directory and backs them up to a remote server using `scp` over SSH.

- **Usage**:
    ```bash
    ./backup_archives.sh
    ```
  All archived log files are moved to the `archived_logs_groupX` directory and securely transferred to the remote server.

---

## Setup Instructions

### Prerequisites:
- A Linux-based environment or WSL.
- SSH access to a remote server for backups.

### Steps:
1. **Clone the repository**:
    ```bash
    git clone https://github.com/yourusername/hospital_monitoring_groupX.git
    ```

2. **Navigate to the project directory**:
    ```bash
    cd hospital_monitoring_groupX
    ```

3. **Make the scripts executable**:
    ```bash
    chmod +x heart_rate_monitor.sh archive_log.sh backup_archives.sh
    ```

4. **Run the heart rate monitoring script**:
    ```bash
    ./heart_rate_monitor.sh
    ```

5. **Run the log archival script**:
    ```bash
    ./archive_log.sh
    ```

6. **Run the backup script**:
    ```bash
    ./backup_archives.sh
    ```

## Remote Server Configuration
**Host**: `<insert sandbox host>`
**Username**: `<insert sandbox username>`
**Backup Directory**: `/home/`

Make sure to set up SSH keys for secure file transfer to the remote server.

## Team Attendance Report

### Team Members:
Shem Ayioka (Group Leader)
Julie Isaro
Emmanuel Mukasa
Yvette Uwimpaye
Morsal Hakim
Adeodatus Nkundimana

### Attendance Record:
Session 1 (Oct 14th)
Everyone was present and active

Session 2 (Oct 17th)
Everyone was present and active

Session 3 (Oct 19th)
Everyone was present and active
