#!/bin/bash

# 1. Tentukan folder yang mau dibackup (Sumber) dan folder tempat menyimpan (Tujuan)
FOLDER_SUMBER="$HOME/belajar-devops"
FOLDER_TUJUAN="$HOME/folder-backup"

# 2. Buat folder tujuan jika folder tersebut belum ada
mkdir -p "$FOLDER_TUJUAN"

# 3. Buat nama file backup yang unik menggunakan cap tanggal dan waktu saat ini
TANGGAL=$(date +%Y-%m-%d_%H-%M-%S)
NAMA_FILE="backup_devops_$TANGGAL.tar.gz"

# 4. Tampilkan pesan di terminal bahwa proses dimulai
echo "============================================"
echo "Memulai proses backup otomatis..."
echo "Sumber: $FOLDER_SUMBER"
echo "Tujuan: $FOLDER_TUJUAN/$NAMA_FILE"
echo "============================================"

# 5. Lakukan kompresi (zip/tar) folder sumber ke folder tujuan
tar -czf "$FOLDER_TUJUAN/$NAMA_FILE" -C "$FOLDER_SUMBER" .

# 6. Tampilkan pesan di terminal bahwa proses selesai
echo "Selamat! Backup berhasil dibuat pada $TANGGAL"
echo "============================================"
