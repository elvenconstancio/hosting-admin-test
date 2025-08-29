# hosting-admin-test

## 📂 Struktur Repo
- `.env` → konfigurasi Laravel sudah jadi (tidak perlu edit lagi).
- `database/hosting_admin_test.sql` → file database SQL untuk import manual.
- Semua file Laravel sudah termasuk.

---

## Cara Install & Menjalankan
1. **Clone / Download** project ini:
   Clone:
       Buka terminal (pastikan ada git)
       Masuk ke folder tempat ingin meletakkan project
       ketik: git clone https://github.com/elvenconstancio/hosting-admin-test.git
       ketik: cd hosting-admin-test
    Atau download dan extract zip file project ini

2. Jalankan web server dan pastikan ada composer
3. ketik: composer install
4. Import Database:
   Buka phpMyAdmin atau MySQL client.
   Buat database baru, misalnya hosting_admin_test.
   Import file SQL dari: hosting_admin_test.sql

5. Konfigurasi .env:
   File .env sudah tersedia di repo.
   Pastikan DB_DATABASE, DB_USERNAME, dan DB_PASSWORD sesuai dengan MySQL lokal kamu.

6. php artisan key:generate
7. php artisan serve
8. Buka di browser: http://127.0.0.1:8000 atau localhost:8000

9. Akun Demo untuk login:
   Email: admin@admin.com
   Password: password
   (Default nya sudah terisi)
