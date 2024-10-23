ALTER TABLE mahasiswa DROP CONSTRAINT FK__mahasiswa__jurus__4D94879B;
ALTER TABLE mahasiswa DROP CONSTRAINT FK__mahasiswa__dosen__4E88ABD4;

ALTER TABLE mahasiswa
ADD CONSTRAINT FK_mahasiswa_jurusan FOREIGN KEY (jurusan_id)
REFERENCES jurusan(id) ON DELETE CASCADE;

ALTER TABLE mahasiswa
ADD CONSTRAINT FK_mahasiswa_dosen_wali FOREIGN KEY (dosen_wali_id)
REFERENCES dosen_wali(id) ON DELETE CASCADE;


DELETE FROM mahasiswa
WHERE id IN (1, 2, 3, 4, 5);