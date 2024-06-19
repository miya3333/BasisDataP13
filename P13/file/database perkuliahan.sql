CREATE TABLE `dosen_pa` (
	`id_pa` INT NOT NULL,
	`nama_pa` VARCHAR(255),
	`jml_mhs` INT NOT NULL,
	PRIMARY KEY(`id_pa`)
);

CREATE TABLE `mahasiswa` (
	`nim` INT NOT NULL,
	`nama` VARCHAR(255),
	`id_pa` INT NOT NULL,
	PRIMARY KEY(`nim`, `id_pa`)
);

CREATE TABLE `mhs` (
	`nim` INT NOT NULL,
	`nama` VARCHAR(255),
	`ip` FLOAT NOT NULL,
	PRIMARY KEY(`nim`)
);

CREATE TABLE `mk` (
	`kode_mk` VARCHAR(255) NOT NULL,
	`nama_mk` VARCHAR(255),
	`sks` INT NOT NULL,
	PRIMARY KEY(`kode_mk`)
);

CREATE TABLE `nilaimhs` (
	`nim` INT NOT NULL,
	`kode_mk` VARCHAR(255) NOT NULL,
	`nilai_abjad` VARCHAR(255) NOT NULL,
	PRIMARY KEY(`nim`, `kode_mk`)
);

CREATE TABLE `siswa` (
	`nis` INT NOT NULL,
	`nama` VARCHAR(255),
	`status` VARCHAR(255),
	PRIMARY KEY(`nis`)
);

CREATE TABLE `daftarnilai` (
	`nis` INT NOT NULL,
	`nilai` VARCHAR(255),
	PRIMARY KEY(`nis`)
);

ALTER TABLE `mahasiswa`
ADD FOREIGN KEY(`id_pa`) REFERENCES `dosen_pa`(`id_pa`)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `nilaimhs`
ADD FOREIGN KEY(`nim`) REFERENCES `mhs`(`nim`)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `nilaimhs`
ADD FOREIGN KEY(`kode_mk`) REFERENCES `mk`(`kode_mk`)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE `daftarnilai`
ADD FOREIGN KEY(`nis`) REFERENCES `siswa`(`nis`)
ON UPDATE CASCADE ON DELETE CASCADE;