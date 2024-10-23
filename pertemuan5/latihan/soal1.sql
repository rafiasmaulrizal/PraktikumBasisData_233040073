CREATE TABLE jurusan(
id BIGINT PRIMARY KEY,
nama_jurusan BIGINT,
);

CREATE TABLE dosen_wali(
id BIGINT PRIMARY KEY,
NIP BIGINT,
nama VARCHAR(255),
tanggal_lahir DATE,
alamat VARCHAR(255),
no_hp INT,
);

CREATE TABLE mahasiswa(
id BIGINT PRIMARY KEY,
NPM INT NOT NULL,
nama VARCHAR(255) NOT NULL,
tanggal_lahir DATE,
alamat VARCHAR(255),
no_hp INT,
jurusan_id BIGINT,
dosen_wali_id BIGINT,
FOREIGN KEY (jurusan_id) REFERENCES jurusan(id),
FOREIGN KEY (dosen_wali_id) REFERENCES dosen_wali(id)
);


