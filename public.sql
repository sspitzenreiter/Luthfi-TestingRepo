PGDMP         9                x            SyncDapo2020    9.6.12    12.0    F           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            G           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            H           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            I           1262    258305    SyncDapo2020    DATABASE     �   CREATE DATABASE "SyncDapo2020" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE "SyncDapo2020";
                postgres    false            J           0    0    DATABASE "SyncDapo2020"    ACL     3   GRANT CONNECT ON DATABASE "SyncDapo2020" TO tikom;
                   postgres    false    5193                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            K           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    15                       1255    268793    uuid_generate_v1()    FUNCTION     }   CREATE FUNCTION public.uuid_generate_v1() RETURNS uuid
    LANGUAGE c STRICT
    AS '$libdir/uuid-ossp', 'uuid_generate_v1';
 )   DROP FUNCTION public.uuid_generate_v1();
       public          postgres    false    15                       1255    268794    uuid_generate_v1mc()    FUNCTION     �   CREATE FUNCTION public.uuid_generate_v1mc() RETURNS uuid
    LANGUAGE c STRICT
    AS '$libdir/uuid-ossp', 'uuid_generate_v1mc';
 +   DROP FUNCTION public.uuid_generate_v1mc();
       public          postgres    false    15                       1255    268795    uuid_generate_v3(uuid, text)    FUNCTION     �   CREATE FUNCTION public.uuid_generate_v3(namespace uuid, name text) RETURNS uuid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/uuid-ossp', 'uuid_generate_v3';
 B   DROP FUNCTION public.uuid_generate_v3(namespace uuid, name text);
       public          postgres    false    15                       1255    268796    uuid_generate_v4()    FUNCTION     }   CREATE FUNCTION public.uuid_generate_v4() RETURNS uuid
    LANGUAGE c STRICT
    AS '$libdir/uuid-ossp', 'uuid_generate_v4';
 )   DROP FUNCTION public.uuid_generate_v4();
       public          postgres    false    15                       1255    268797    uuid_generate_v5(uuid, text)    FUNCTION     �   CREATE FUNCTION public.uuid_generate_v5(namespace uuid, name text) RETURNS uuid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/uuid-ossp', 'uuid_generate_v5';
 B   DROP FUNCTION public.uuid_generate_v5(namespace uuid, name text);
       public          postgres    false    15                       1255    268798 
   uuid_nil()    FUNCTION     w   CREATE FUNCTION public.uuid_nil() RETURNS uuid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/uuid-ossp', 'uuid_nil';
 !   DROP FUNCTION public.uuid_nil();
       public          postgres    false    15                       1255    268799    uuid_ns_dns()    FUNCTION     }   CREATE FUNCTION public.uuid_ns_dns() RETURNS uuid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/uuid-ossp', 'uuid_ns_dns';
 $   DROP FUNCTION public.uuid_ns_dns();
       public          postgres    false    15                       1255    268800    uuid_ns_oid()    FUNCTION     }   CREATE FUNCTION public.uuid_ns_oid() RETURNS uuid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/uuid-ossp', 'uuid_ns_oid';
 $   DROP FUNCTION public.uuid_ns_oid();
       public          postgres    false    15                       1255    268801    uuid_ns_url()    FUNCTION     }   CREATE FUNCTION public.uuid_ns_url() RETURNS uuid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/uuid-ossp', 'uuid_ns_url';
 $   DROP FUNCTION public.uuid_ns_url();
       public          postgres    false    15                       1255    268802    uuid_ns_x500()    FUNCTION        CREATE FUNCTION public.uuid_ns_x500() RETURNS uuid
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/uuid-ossp', 'uuid_ns_x500';
 %   DROP FUNCTION public.uuid_ns_x500();
       public          postgres    false    15            k           1259    267728    akreditasi_prodi    TABLE       CREATE TABLE public.akreditasi_prodi (
    akred_prodi_id uuid,
    akreditasi_id numeric(1,0),
    la_id character(5),
    jurusan_sp_id uuid,
    no_sk_akred character varying(80),
    tgl_sk_akred date,
    tgl_akhir_akred date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 $   DROP TABLE public.akreditasi_prodi;
       public            postgres    false    15            L           0    0    TABLE akreditasi_prodi    ACL     8   GRANT SELECT ON TABLE public.akreditasi_prodi TO tikom;
          public          postgres    false    363            l           1259    267734    akreditasi_sp    TABLE     �  CREATE TABLE public.akreditasi_sp (
    akred_sp_id uuid,
    sekolah_id uuid,
    akred_sp_sk character varying(80),
    akred_sp_tmt date,
    akred_sp_tst date,
    akreditasi_id numeric(1,0),
    la_id character(5),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.akreditasi_sp;
       public            postgres    false    15            M           0    0    TABLE akreditasi_sp    ACL     5   GRANT SELECT ON TABLE public.akreditasi_sp TO tikom;
          public          postgres    false    364            m           1259    267740    akt_pd    TABLE       CREATE TABLE public.akt_pd (
    id_akt_pd uuid,
    mou_id uuid,
    id_jns_akt_pd numeric(3,0),
    judul_akt_pd character varying(500),
    sk_tugas character varying(80),
    tgl_sk_tugas date,
    ket_akt text,
    a_komunal numeric(1,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.akt_pd;
       public            postgres    false    15            N           0    0    TABLE akt_pd    ACL     .   GRANT SELECT ON TABLE public.akt_pd TO tikom;
          public          postgres    false    365            n           1259    267749    aktivitas_kepanitiaan    TABLE     �  CREATE TABLE public.aktivitas_kepanitiaan (
    id_akt_pan uuid,
    id_panitia uuid,
    semester_id character(5),
    id_jns_akt_pan numeric(4,0),
    frek_akt_pan numeric(4,0),
    ket_akt_pan character varying(300),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 )   DROP TABLE public.aktivitas_kepanitiaan;
       public            postgres    false    15            O           0    0    TABLE aktivitas_kepanitiaan    ACL     =   GRANT SELECT ON TABLE public.aktivitas_kepanitiaan TO tikom;
          public          postgres    false    366            o           1259    267755    alat    TABLE       CREATE TABLE public.alat (
    id_alat uuid,
    jenis_sarana_id integer,
    sekolah_id uuid,
    ptk_id uuid,
    id_ruang uuid,
    id_hapus_buku character(1),
    kepemilikan_sarpras_id numeric(1,0),
    kd_kl character(3),
    kd_satker character varying(20),
    kd_brg character varying(10),
    nup integer,
    kode_eselon1 character varying(2) DEFAULT NULL::character varying,
    nama_eselon1 character varying(255) DEFAULT NULL::character varying,
    kode_sub_satker character varying(3) DEFAULT NULL::character varying,
    nama_sub_satker character varying(255) DEFAULT NULL::character varying,
    nama character varying(100),
    spesifikasi character varying(300),
    tgl_hapus_buku date,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.alat;
       public            postgres    false    15            P           0    0 
   TABLE alat    ACL     ,   GRANT SELECT ON TABLE public.alat TO tikom;
          public          postgres    false    367            p           1259    267769    alat_dari_blockgrant    TABLE     o  CREATE TABLE public.alat_dari_blockgrant (
    blockgrant_id uuid,
    id_alat uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 (   DROP TABLE public.alat_dari_blockgrant;
       public            postgres    false    15            Q           0    0    TABLE alat_dari_blockgrant    ACL     <   GRANT SELECT ON TABLE public.alat_dari_blockgrant TO tikom;
          public          postgres    false    368            q           1259    267775    alat_longitudinal    TABLE     �  CREATE TABLE public.alat_longitudinal (
    id_alat uuid,
    semester_id character(5),
    jumlah integer,
    status_kelaikan numeric(1,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 %   DROP TABLE public.alat_longitudinal;
       public            postgres    false    15            R           0    0    TABLE alat_longitudinal    ACL     9   GRANT SELECT ON TABLE public.alat_longitudinal TO tikom;
          public          postgres    false    369            r           1259    267781    anak    TABLE     j  CREATE TABLE public.anak (
    anak_id uuid,
    ptk_id uuid,
    status_anak_id numeric(1,0),
    jenjang_pendidikan_id numeric(2,0),
    nik character(16),
    nisn character(10),
    nama character varying(100),
    jenis_kelamin character(1),
    tempat_lahir character varying(32),
    tanggal_lahir date,
    tahun_masuk integer,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.anak;
       public            postgres    false    15            S           0    0 
   TABLE anak    ACL     ,   GRANT SELECT ON TABLE public.anak TO tikom;
          public          postgres    false    370            s           1259    267787    anggota_akt_pd    TABLE     �  CREATE TABLE public.anggota_akt_pd (
    id_ang_akt_pd uuid,
    id_akt_pd uuid,
    registrasi_id uuid,
    nm_pd character varying(100),
    nipd character varying(24),
    jns_peran_pd character(1) DEFAULT '3'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.anggota_akt_pd;
       public            postgres    false    15            T           0    0    TABLE anggota_akt_pd    ACL     6   GRANT SELECT ON TABLE public.anggota_akt_pd TO tikom;
          public          postgres    false    371            t           1259    267794    anggota_gugus    TABLE     f  CREATE TABLE public.anggota_gugus (
    gugus_id uuid,
    sekolah_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.anggota_gugus;
       public            postgres    false    15            U           0    0    TABLE anggota_gugus    ACL     5   GRANT SELECT ON TABLE public.anggota_gugus TO tikom;
          public          postgres    false    372            u           1259    267800    anggota_panitia    TABLE     #  CREATE TABLE public.anggota_panitia (
    id_ang_panitia uuid,
    id_panitia uuid,
    nm_ang character varying(100),
    no_kontak character varying(20),
    peran_ang character varying(30),
    unsur_ang character(1),
    peserta_didik_id uuid,
    ptk_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.anggota_panitia;
       public            postgres    false    15            V           0    0    TABLE anggota_panitia    ACL     7   GRANT SELECT ON TABLE public.anggota_panitia TO tikom;
          public          postgres    false    373            v           1259    267806    anggota_rombel    TABLE     �  CREATE TABLE public.anggota_rombel (
    anggota_rombel_id uuid,
    rombongan_belajar_id uuid,
    peserta_didik_id uuid,
    jenis_pendaftaran_id numeric(1,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.anggota_rombel;
       public            postgres    false    15            W           0    0    TABLE anggota_rombel    ACL     6   GRANT SELECT ON TABLE public.anggota_rombel TO tikom;
          public          postgres    false    374            w           1259    267812    angkutan    TABLE       CREATE TABLE public.angkutan (
    id_angkutan uuid,
    sekolah_id uuid,
    ptk_id uuid,
    jenis_sarana_id integer,
    id_hapus_buku character(1),
    kepemilikan_sarpras_id numeric(1,0),
    kd_kl character(3),
    kd_satker character varying(20),
    kd_brg character varying(10),
    nup integer,
    kode_eselon1 character varying(2) DEFAULT NULL::character varying,
    nama_eselon1 character varying(255) DEFAULT NULL::character varying,
    kode_sub_satker character varying(3) DEFAULT NULL::character varying,
    nama_sub_satker character varying(255) DEFAULT NULL::character varying,
    nama character varying(100),
    spesifikasi character varying(300),
    tgl_hapus_buku date,
    merk character varying(255) DEFAULT NULL::character varying,
    no_polisi character varying(255) DEFAULT NULL::character varying,
    no_bpkb character varying(255) DEFAULT NULL::character varying,
    alamat character varying(255) DEFAULT NULL::character varying,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.angkutan;
       public            postgres    false    15            X           0    0    TABLE angkutan    ACL     0   GRANT SELECT ON TABLE public.angkutan TO tikom;
          public          postgres    false    375            x           1259    267830    angkutan_dari_blockgrant    TABLE     w  CREATE TABLE public.angkutan_dari_blockgrant (
    blockgrant_id uuid,
    id_angkutan uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 ,   DROP TABLE public.angkutan_dari_blockgrant;
       public            postgres    false    15            Y           0    0    TABLE angkutan_dari_blockgrant    ACL     @   GRANT SELECT ON TABLE public.angkutan_dari_blockgrant TO tikom;
          public          postgres    false    376            y           1259    267836    bangunan    TABLE     f  CREATE TABLE public.bangunan (
    id_bangunan uuid,
    jenis_prasarana_id integer,
    sekolah_id uuid,
    id_tanah uuid,
    ptk_id uuid,
    id_hapus_buku character(1),
    kepemilikan_sarpras_id numeric(1,0),
    kd_kl character(3),
    kd_satker character varying(20),
    kd_brg character varying(10),
    nup integer,
    kode_eselon1 character varying(2) DEFAULT NULL::character varying,
    nama_eselon1 character varying(255) DEFAULT NULL::character varying,
    kode_sub_satker character varying(3) DEFAULT NULL::character varying,
    nama_sub_satker character varying(255) DEFAULT NULL::character varying,
    nama character varying(100),
    panjang double precision,
    lebar double precision,
    nilai_perolehan_aset numeric(20,2),
    jml_lantai numeric(3,0) DEFAULT 1,
    thn_dibangun numeric(4,0),
    luas_tapak_bangunan numeric(7,1),
    vol_pondasi_m3 numeric(7,1),
    vol_sloop_kolom_balok_m3 numeric(7,1),
    panj_kudakuda_m numeric(7,1),
    vol_kudakuda_m3 numeric(7,1),
    panj_kaso_m numeric(7,1),
    panj_reng_m numeric(7,1),
    luas_tutup_atap_m2 numeric(7,1),
    kd_satker_tanah character varying(255) DEFAULT NULL::character varying,
    nm_satker_tanah character varying(255) DEFAULT NULL::character varying,
    kd_brg_tanah character varying(255) DEFAULT NULL::character varying,
    nm_brg_tanah character varying(255) DEFAULT NULL::character varying,
    nup_brg_tanah character varying(255) DEFAULT NULL::character varying,
    tgl_sk_pemakai date,
    tgl_hapus_buku date,
    ket_bangunan character varying(250),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.bangunan;
       public            postgres    false    15            Z           0    0    TABLE bangunan    ACL     0   GRANT SELECT ON TABLE public.bangunan TO tikom;
          public          postgres    false    377            z           1259    267856    bangunan_dari_blockgrant    TABLE     w  CREATE TABLE public.bangunan_dari_blockgrant (
    blockgrant_id uuid,
    id_bangunan uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 ,   DROP TABLE public.bangunan_dari_blockgrant;
       public            postgres    false    15            [           0    0    TABLE bangunan_dari_blockgrant    ACL     @   GRANT SELECT ON TABLE public.bangunan_dari_blockgrant TO tikom;
          public          postgres    false    378            {           1259    267862    bangunan_longitudinal    TABLE       CREATE TABLE public.bangunan_longitudinal (
    id_bangunan uuid,
    semester_id character(5),
    rusak_pondasi numeric(6,2) DEFAULT 0,
    ket_pondasi character varying(120),
    rusak_sloop_kolom_balok numeric(6,2) DEFAULT 0,
    ket_sloop_kolom_balok character varying(120),
    rusak_plester_struktur numeric(6,2) DEFAULT 0,
    ket_plester_struktur character varying(120),
    rusak_kudakuda_atap numeric(6,2) DEFAULT 0,
    ket_kudakuda_atap character varying(120),
    rusak_kaso_atap numeric(6,2) DEFAULT 0,
    ket_kaso_atap character varying(120),
    rusak_reng_atap numeric(6,2) DEFAULT 0,
    ket_reng_atap character varying(120),
    rusak_tutup_atap numeric(6,2) DEFAULT 0,
    ket_tutup_atap character varying(120),
    nilai_saat_ini numeric(20,2),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 )   DROP TABLE public.bangunan_longitudinal;
       public            postgres    false    15            \           0    0    TABLE bangunan_longitudinal    ACL     =   GRANT SELECT ON TABLE public.bangunan_longitudinal TO tikom;
          public          postgres    false    379            |           1259    267878 
   bantuan_pd    TABLE     �  CREATE TABLE public.bantuan_pd (
    id_bantuan_pd uuid,
    jenis_bantuan_id integer,
    anggota_rombel_id uuid,
    besar_bantuan numeric(15,0),
    dana_pendamping numeric(15,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.bantuan_pd;
       public            postgres    false    15            ]           0    0    TABLE bantuan_pd    ACL     2   GRANT SELECT ON TABLE public.bantuan_pd TO tikom;
          public          postgres    false    380            }           1259    267884    beasiswa_peserta_didik    TABLE     9  CREATE TABLE public.beasiswa_peserta_didik (
    beasiswa_peserta_didik_id uuid,
    peserta_didik_id uuid,
    jenis_beasiswa_id integer,
    keterangan character varying(80),
    tahun_mulai numeric(4,0),
    tahun_selesai numeric(4,0),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 *   DROP TABLE public.beasiswa_peserta_didik;
       public            postgres    false    15            ^           0    0    TABLE beasiswa_peserta_didik    ACL     >   GRANT SELECT ON TABLE public.beasiswa_peserta_didik TO tikom;
          public          postgres    false    381            ~           1259    267891    beasiswa_ptk    TABLE     E  CREATE TABLE public.beasiswa_ptk (
    beasiswa_ptk_id uuid,
    jenis_beasiswa_id integer,
    ptk_id uuid,
    keterangan character varying(200),
    tahun_mulai numeric(4,0),
    tahun_akhir numeric(4,0),
    masih_menerima numeric(1,0) DEFAULT 1,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
     DROP TABLE public.beasiswa_ptk;
       public            postgres    false    15            _           0    0    TABLE beasiswa_ptk    ACL     4   GRANT SELECT ON TABLE public.beasiswa_ptk TO tikom;
          public          postgres    false    382                       1259    267899 
   bidang_sdm    TABLE     �  CREATE TABLE public.bidang_sdm (
    ptk_id uuid,
    bidang_studi_id integer,
    urutan numeric(1,0),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.bidang_sdm;
       public            postgres    false    15            `           0    0    TABLE bidang_sdm    ACL     2   GRANT SELECT ON TABLE public.bidang_sdm TO tikom;
          public          postgres    false    383            �           1259    267906 
   bimbing_pd    TABLE     �  CREATE TABLE public.bimbing_pd (
    id_bimb_pd uuid,
    id_akt_pd uuid,
    ptk_id uuid,
    urutan_pembimbing numeric(1,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.bimbing_pd;
       public            postgres    false    15            a           0    0    TABLE bimbing_pd    ACL     2   GRANT SELECT ON TABLE public.bimbing_pd TO tikom;
          public          postgres    false    384            �           1259    267912 
   blockgrant    TABLE     ~  CREATE TABLE public.blockgrant (
    blockgrant_id uuid,
    sekolah_id uuid,
    nama character varying(50),
    tahun numeric(4,0),
    jenis_bantuan_id integer,
    sumber_dana_id numeric(3,0),
    besar_bantuan numeric(15,0),
    dana_pendamping numeric(15,0),
    peruntukan_dana character varying(50),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.blockgrant;
       public            postgres    false    15            b           0    0    TABLE blockgrant    ACL     2   GRANT SELECT ON TABLE public.blockgrant TO tikom;
          public          postgres    false    385            �           1259    267919    buku    TABLE     W  CREATE TABLE public.buku (
    id_buku uuid,
    mata_pelajaran_id integer,
    id_ruang uuid,
    sekolah_id uuid,
    id_biblio uuid,
    tingkat_pendidikan_id numeric(2,0),
    nm_buku character varying(256),
    id_hapus_buku character(1),
    tgl_hapus_buku date,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.buku;
       public            postgres    false    15            c           0    0 
   TABLE buku    ACL     ,   GRANT SELECT ON TABLE public.buku TO tikom;
          public          postgres    false    386            �           1259    267926    buku_longitudinal    TABLE     �  CREATE TABLE public.buku_longitudinal (
    id_buku uuid,
    semester_id character(5),
    jumlah integer,
    status_kelaikan numeric(1,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 %   DROP TABLE public.buku_longitudinal;
       public            postgres    false    15            d           0    0    TABLE buku_longitudinal    ACL     9   GRANT SELECT ON TABLE public.buku_longitudinal TO tikom;
          public          postgres    false    387            �           1259    267932    buku_pelajaran    TABLE     m  CREATE TABLE public.buku_pelajaran (
    id_biblio uuid,
    pembelajaran_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.buku_pelajaran;
       public            postgres    false    15            e           0    0    TABLE buku_pelajaran    ACL     6   GRANT SELECT ON TABLE public.buku_pelajaran TO tikom;
          public          postgres    false    388            �           1259    267938    buku_ptk    TABLE     �  CREATE TABLE public.buku_ptk (
    buku_id uuid,
    ptk_id uuid,
    judul_buku character varying(200),
    tahun numeric(4,0),
    penerbit character varying(30),
    isbn character varying(20),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.buku_ptk;
       public            postgres    false    15            f           0    0    TABLE buku_ptk    ACL     0   GRANT SELECT ON TABLE public.buku_ptk TO tikom;
          public          postgres    false    389            �           1259    267944 	   demografi    TABLE       CREATE TABLE public.demografi (
    demografi_id uuid,
    kode_wilayah character(8),
    tahun_ajaran_id numeric(4,0),
    usia_5 bigint,
    usia_7 bigint,
    usia_13 bigint,
    usia_16 bigint,
    usia_18 bigint,
    jumlah_penduduk bigint,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.demografi;
       public            postgres    false    15            g           0    0    TABLE demografi    ACL     1   GRANT SELECT ON TABLE public.demografi TO tikom;
          public          postgres    false    390            �           1259    267950    diklat    TABLE     �  CREATE TABLE public.diklat (
    diklat_id uuid,
    jenis_diklat_id integer,
    ptk_id uuid,
    nama character varying(50),
    penyelenggara character varying(100),
    tahun numeric(4,0),
    peran character varying(30),
    tingkat numeric(2,0),
    berapa_jam numeric(4,0),
    sertifikat_diklat character varying(80),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.diklat;
       public            postgres    false    15            h           0    0    TABLE diklat    ACL     .   GRANT SELECT ON TABLE public.diklat TO tikom;
          public          postgres    false    391            �           1259    267957    dudi    TABLE     H  CREATE TABLE public.dudi (
    dudi_id uuid,
    nama character varying(100),
    bidang_usaha_id character(10),
    alamat_jalan character varying(80),
    rt numeric(2,0),
    rw numeric(2,0),
    nama_dusun character varying(60),
    desa_kelurahan character varying(60),
    kode_wilayah character(8),
    kode_pos character(5),
    lintang numeric(18,12),
    bujur numeric(18,12),
    nomor_telepon character varying(20),
    nomor_fax character varying(20),
    email character varying(60),
    website character varying(100),
    npwp character(15),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.dudi;
       public            postgres    false    15            i           0    0 
   TABLE dudi    ACL     ,   GRANT SELECT ON TABLE public.dudi TO tikom;
          public          postgres    false    392            �           1259    268182    ptk    TABLE     �  CREATE TABLE public.ptk (
    ptk_id uuid NOT NULL,
    nama character varying(100),
    nip character varying(18),
    jenis_kelamin character(1),
    tempat_lahir character varying(32),
    tanggal_lahir date,
    nik character(16),
    no_kk character(16),
    niy_nigk character varying(30),
    nuptk character(16),
    nuks character varying(22),
    status_kepegawaian_id smallint,
    jenis_ptk_id numeric(2,0),
    pengawas_bidang_studi_id integer,
    agama_id smallint,
    alamat_jalan character varying(80),
    rt numeric(2,0),
    rw numeric(2,0),
    nama_dusun character varying(60),
    desa_kelurahan character varying(60),
    kode_wilayah character(8),
    kode_pos character(5),
    lintang numeric(18,12),
    bujur numeric(18,12),
    no_telepon_rumah character varying(20),
    no_hp character varying(20),
    email character varying(60),
    status_keaktifan_id numeric(2,0),
    sk_cpns character varying(80),
    tgl_cpns date,
    sk_pengangkatan character varying(80),
    tmt_pengangkatan date,
    lembaga_pengangkat_id numeric(2,0),
    pangkat_golongan_id numeric(2,0),
    keahlian_laboratorium_id smallint,
    sumber_gaji_id numeric(2,0),
    nama_ibu_kandung character varying(100),
    status_perkawinan numeric(1,0),
    nama_suami_istri character varying(100),
    nip_suami_istri character(18),
    pekerjaan_suami_istri integer,
    tmt_pns date,
    sudah_lisensi_kepala_sekolah numeric(1,0),
    jumlah_sekolah_binaan smallint,
    pernah_diklat_kepengawasan numeric(1,0),
    nm_wp character varying(100),
    status_data integer,
    karpeg character varying(10),
    karpas character varying(16),
    mampu_handle_kk integer,
    keahlian_braille numeric(1,0) DEFAULT 0,
    keahlian_bhs_isyarat numeric(1,0) DEFAULT 0,
    npwp character(15),
    kewarganegaraan character(2),
    id_bank character(3),
    rekening_bank character varying(20),
    rekening_atas_nama character varying(50),
    blob_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.ptk;
       public            postgres    false    15            j           0    0 	   TABLE ptk    ACL     +   GRANT SELECT ON TABLE public.ptk TO tikom;
          public          postgres    false    423            �           1259    268201    ptk_terdaftar    TABLE     [  CREATE TABLE public.ptk_terdaftar (
    ptk_terdaftar_id uuid,
    ptk_id uuid,
    sekolah_id uuid,
    jenis_keluar_id character(1),
    tahun_ajaran_id numeric(4,0),
    nomor_surat_tugas character varying(80),
    tanggal_surat_tugas date,
    ptk_induk numeric(1,0),
    tmt_tugas date,
    aktif_bulan_01 numeric(1,0) DEFAULT 0,
    aktif_bulan_02 numeric(1,0) DEFAULT 0,
    aktif_bulan_03 numeric(1,0) DEFAULT 0,
    aktif_bulan_04 numeric(1,0) DEFAULT 0,
    aktif_bulan_05 numeric(1,0) DEFAULT 0,
    aktif_bulan_06 numeric(1,0) DEFAULT 0,
    aktif_bulan_07 numeric(1,0) DEFAULT 0,
    aktif_bulan_08 numeric(1,0) DEFAULT 0,
    aktif_bulan_09 numeric(1,0) DEFAULT 0,
    aktif_bulan_10 numeric(1,0) DEFAULT 0,
    aktif_bulan_11 numeric(1,0) DEFAULT 0,
    aktif_bulan_12 numeric(1,0) DEFAULT 0,
    tgl_ptk_keluar date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.ptk_terdaftar;
       public            postgres    false    15            k           0    0    TABLE ptk_terdaftar    ACL     5   GRANT SELECT ON TABLE public.ptk_terdaftar TO tikom;
          public          postgres    false    425            �           1259    268333    sekolah    TABLE     N  CREATE TABLE public.sekolah (
    sekolah_id uuid,
    nama character varying(100),
    nama_nomenklatur character varying(100),
    nss character(12),
    npsn character(8),
    bentuk_pendidikan_id smallint,
    alamat_jalan character varying(80),
    rt numeric(2,0),
    rw numeric(2,0),
    nama_dusun character varying(60),
    desa_kelurahan character varying(60),
    kode_wilayah character(8),
    kode_pos character(5),
    lintang numeric(18,12),
    bujur numeric(18,12),
    nomor_telepon character varying(20),
    nomor_fax character varying(20),
    email character varying(60),
    website character varying(100),
    kebutuhan_khusus_id integer,
    status_sekolah numeric(1,0),
    sk_pendirian_sekolah character varying(80),
    tanggal_sk_pendirian date,
    status_kepemilikan_id numeric(1,0),
    yayasan_id uuid,
    sk_izin_operasional character varying(80),
    tanggal_sk_izin_operasional date,
    no_rekening character varying(20),
    nama_bank character varying(20),
    cabang_kcp_unit character varying(60),
    rekening_atas_nama character varying(50),
    mbs numeric(1,0),
    luas_tanah_milik numeric(7,0),
    luas_tanah_bukan_milik numeric(7,0),
    kode_registrasi bigint,
    npwp character(15),
    nm_wp character varying(100),
    keaktifan numeric(1,0) DEFAULT 1,
    flag character(3),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.sekolah;
       public            postgres    false    15            l           0    0    TABLE sekolah    ACL     /   GRANT SELECT ON TABLE public.sekolah TO tikom;
          public          postgres    false    439            �           1259    326086    gtk_jenis_status    VIEW     C  CREATE VIEW public.gtk_jenis_status AS
 SELECT s1.npsn,
    s1.nama,
    p2.jenis_ptk_id,
    p2.status_kepegawaian_id,
    p1.tahun_ajaran_id,
    w2.nama AS kab,
    w1.nama AS kec,
    p1.ptk_induk,
    count(DISTINCT p1.ptk_id) AS jml
   FROM ((((public.ptk_terdaftar p1
     JOIN public.ptk p2 ON ((p1.ptk_id = p2.ptk_id)))
     JOIN public.sekolah s1 ON ((p1.sekolah_id = s1.sekolah_id)))
     JOIN ref.mst_wilayah w1 ON (("left"((s1.kode_wilayah)::text, 6) = (w1.kode_wilayah)::text)))
     JOIN ref.mst_wilayah w2 ON ((w1.mst_kode_wilayah = w2.kode_wilayah)))
  WHERE ((p1.soft_delete = (0)::numeric) AND (p2.soft_delete = (0)::numeric) AND (p1.jenis_keluar_id IS NULL) AND (p1.tgl_ptk_keluar IS NULL))
  GROUP BY s1.npsn, s1.nama, p2.jenis_ptk_id, p2.status_kepegawaian_id, p1.tahun_ajaran_id, w2.nama, w1.nama, p1.ptk_induk;
 #   DROP VIEW public.gtk_jenis_status;
       public          postgres    false    425    423    423    423    423    425    425    439    439    425    439    439    425    425    425    15            m           0    0    TABLE gtk_jenis_status    ACL     8   GRANT SELECT ON TABLE public.gtk_jenis_status TO tikom;
          public          postgres    false    747            �           1259    267966    gugus_sekolah    TABLE        CREATE TABLE public.gugus_sekolah (
    gugus_id uuid,
    asal_data character(1) DEFAULT '1'::bpchar,
    nama character varying(50),
    sk_gugus character varying(80),
    jenis_gugus_id numeric(3,0),
    sekolah_inti_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.gugus_sekolah;
       public            postgres    false    15            n           0    0    TABLE gugus_sekolah    ACL     5   GRANT SELECT ON TABLE public.gugus_sekolah TO tikom;
          public          postgres    false    393            �           1259    267973    guru_sasaran_pengawas    TABLE     �  CREATE TABLE public.guru_sasaran_pengawas (
    pengawas_terdaftar_id uuid,
    ptk_terdaftar_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 )   DROP TABLE public.guru_sasaran_pengawas;
       public            postgres    false    15            o           0    0    TABLE guru_sasaran_pengawas    ACL     =   GRANT SELECT ON TABLE public.guru_sasaran_pengawas TO tikom;
          public          postgres    false    394            �           1259    267979 	   inpassing    TABLE     �  CREATE TABLE public.inpassing (
    inpassing_id uuid,
    pangkat_golongan_id numeric(2,0),
    ptk_id uuid,
    no_sk_inpassing character varying(80),
    tgl_sk_inpassing date,
    tmt_inpassing date,
    angka_kredit numeric(3,0) DEFAULT 0,
    masa_kerja_tahun numeric(2,0) DEFAULT 0,
    masa_kerja_bulan numeric(2,0) DEFAULT 0,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.inpassing;
       public            postgres    false    15            p           0    0    TABLE inpassing    ACL     1   GRANT SELECT ON TABLE public.inpassing TO tikom;
          public          postgres    false    395            �           1259    267989 	   instalasi    TABLE     �   CREATE TABLE public.instalasi (
    id_instalasi uuid,
    kode_wilayah character(8),
    sekolah_id uuid,
    jns_instalasi character(1) DEFAULT '1'::bpchar,
    a_link_aktif numeric(1,0) DEFAULT 1,
    ket_link character varying(100)
);
    DROP TABLE public.instalasi;
       public            postgres    false    15            q           0    0    TABLE instalasi    ACL     1   GRANT SELECT ON TABLE public.instalasi TO tikom;
          public          postgres    false    396            �           1259    267994    izin_operasional    TABLE       CREATE TABLE public.izin_operasional (
    id_izin_operasional uuid,
    sekolah_id uuid,
    lembaga_id uuid,
    sk_izin_operasional character varying(80),
    tmt_izin_operasional date,
    masa_berlaku numeric(2,0),
    tst_izin_operasional date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 $   DROP TABLE public.izin_operasional;
       public            postgres    false    15            r           0    0    TABLE izin_operasional    ACL     8   GRANT SELECT ON TABLE public.izin_operasional TO tikom;
          public          postgres    false    397            �           1259    268000    jadwal    TABLE     $  CREATE TABLE public.jadwal (
    sekolah_id uuid,
    semester_id character(5),
    id_ruang uuid,
    hari numeric(1,0),
    bel_ke_01 uuid,
    bel_ke_02 uuid,
    bel_ke_03 uuid,
    bel_ke_04 uuid,
    bel_ke_05 uuid,
    bel_ke_06 uuid,
    bel_ke_07 uuid,
    bel_ke_08 uuid,
    bel_ke_09 uuid,
    bel_ke_10 uuid,
    bel_ke_11 uuid,
    bel_ke_12 uuid,
    bel_ke_13 uuid,
    bel_ke_14 uuid,
    bel_ke_15 uuid,
    bel_ke_16 uuid,
    bel_ke_17 uuid,
    bel_ke_18 uuid,
    bel_ke_19 uuid,
    bel_ke_20 uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.jadwal;
       public            postgres    false    15            s           0    0    TABLE jadwal    ACL     .   GRANT SELECT ON TABLE public.jadwal TO tikom;
          public          postgres    false    398            �           1259    268006    jur_sp_long    TABLE     �  CREATE TABLE public.jur_sp_long (
    jurusan_sp_id uuid,
    semester_id character(5),
    jumlah_pendaftar numeric(5,0) DEFAULT 0,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.jur_sp_long;
       public            postgres    false    15            t           0    0    TABLE jur_sp_long    ACL     3   GRANT SELECT ON TABLE public.jur_sp_long TO tikom;
          public          postgres    false    399            �           1259    268013    jurusan_kerjasama    TABLE     k  CREATE TABLE public.jurusan_kerjasama (
    mou_id uuid,
    jurusan_sp_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 %   DROP TABLE public.jurusan_kerjasama;
       public            postgres    false    15            u           0    0    TABLE jurusan_kerjasama    ACL     9   GRANT SELECT ON TABLE public.jurusan_kerjasama TO tikom;
          public          postgres    false    400            �           1259    268019 
   jurusan_sp    TABLE       CREATE TABLE public.jurusan_sp (
    jurusan_sp_id uuid,
    sekolah_id uuid,
    kebutuhan_khusus_id integer,
    jurusan_id character varying(25),
    nama_jurusan_sp character varying(60),
    sk_izin character varying(80),
    tanggal_sk_izin date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.jurusan_sp;
       public            postgres    false    15            v           0    0    TABLE jurusan_sp    ACL     2   GRANT SELECT ON TABLE public.jurusan_sp TO tikom;
          public          postgres    false    401            �           1259    268025    karya_tulis    TABLE     !  CREATE TABLE public.karya_tulis (
    karya_tulis_id uuid,
    ptk_id uuid,
    judul character varying(200),
    tahun_pembuatan numeric(4,0),
    publikasi character varying(150),
    keterangan character varying(200),
    url_publikasi character varying(120),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.karya_tulis;
       public            postgres    false    15            w           0    0    TABLE karya_tulis    ACL     3   GRANT SELECT ON TABLE public.karya_tulis TO tikom;
          public          postgres    false    402            �           1259    268034    kelas_ekskul    TABLE       CREATE TABLE public.kelas_ekskul (
    id_kelas_ekskul uuid,
    rombongan_belajar_id uuid,
    id_ekskul integer,
    nm_ekskul character varying(80),
    sk_ekskul character varying(80),
    tgl_sk_ekskul date,
    jam_kegiatan_per_minggu numeric(2,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
     DROP TABLE public.kelas_ekskul;
       public            postgres    false    15            x           0    0    TABLE kelas_ekskul    ACL     4   GRANT SELECT ON TABLE public.kelas_ekskul TO tikom;
          public          postgres    false    403            �           1259    268040    kepanitiaan    TABLE     �  CREATE TABLE public.kepanitiaan (
    id_panitia uuid,
    sekolah_id uuid,
    id_jns_panitia integer,
    nm_panitia character varying(80),
    instansi character varying(100),
    tkt_panitia character(1),
    sk_tugas character varying(80),
    tmt_sk_tugas date,
    tst_sk_tugas date,
    a_pasang_papan numeric(1,0),
    a_formulir numeric(1,0),
    a_silabus numeric(1,0),
    a_berlaku_pos numeric(1,0),
    a_sosialisasi_pos numeric(1,0),
    a_ks_edukatif numeric(1,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.kepanitiaan;
       public            postgres    false    15            y           0    0    TABLE kepanitiaan    ACL     3   GRANT SELECT ON TABLE public.kepanitiaan TO tikom;
          public          postgres    false    404            �           1259    268046    kesejahteraan    TABLE     (  CREATE TABLE public.kesejahteraan (
    kesejahteraan_id uuid,
    ptk_id uuid,
    jenis_kesejahteraan_id integer,
    nama character varying(50),
    penyelenggara character varying(100),
    dari_tahun numeric(4,0),
    sampai_tahun numeric(4,0),
    status integer,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.kesejahteraan;
       public            postgres    false    15            z           0    0    TABLE kesejahteraan    ACL     5   GRANT SELECT ON TABLE public.kesejahteraan TO tikom;
          public          postgres    false    405            �           1259    268052    kesejahteraan_pd    TABLE       CREATE TABLE public.kesejahteraan_pd (
    id_sejahtera_pd uuid,
    peserta_didik_id uuid,
    jenis_kesejahteraan_id integer,
    nomor character varying(50),
    nm_di_kartu character varying(100),
    dari_tahun numeric(4,0),
    sampai_tahun numeric(4,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 $   DROP TABLE public.kesejahteraan_pd;
       public            postgres    false    15            {           0    0    TABLE kesejahteraan_pd    ACL     8   GRANT SELECT ON TABLE public.kesejahteraan_pd TO tikom;
          public          postgres    false    406            �           1259    268058    kitas_pd    TABLE     �  CREATE TABLE public.kitas_pd (
    no_kitas character varying(20),
    peserta_didik_id uuid,
    tmt_kitas date,
    tst_kitas date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.kitas_pd;
       public            postgres    false    15            |           0    0    TABLE kitas_pd    ACL     0   GRANT SELECT ON TABLE public.kitas_pd TO tikom;
          public          postgres    false    407            �           1259    268064 	   kitas_ptk    TABLE     �  CREATE TABLE public.kitas_ptk (
    no_kitas character varying(20),
    ptk_id uuid,
    tmt_kitas date,
    tst_kitas date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.kitas_ptk;
       public            postgres    false    15            }           0    0    TABLE kitas_ptk    ACL     1   GRANT SELECT ON TABLE public.kitas_ptk TO tikom;
          public          postgres    false    408            �           1259    268070    layanan_khusus    TABLE     �  CREATE TABLE public.layanan_khusus (
    id_lk uuid,
    id_jenis_lk character(6),
    sekolah_id uuid,
    sk_lk character varying(80),
    tmt_lk date,
    tst_lk date,
    ket_lk character varying(200),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.layanan_khusus;
       public            postgres    false    15            ~           0    0    TABLE layanan_khusus    ACL     6   GRANT SELECT ON TABLE public.layanan_khusus TO tikom;
          public          postgres    false    409            �           1259    268076    lembaga_non_sekolah    TABLE     g  CREATE TABLE public.lembaga_non_sekolah (
    lembaga_id uuid,
    nama character varying(100),
    singkatan character varying(15),
    jenis_lembaga_id numeric(5,0),
    alamat_jalan character varying(80),
    rt numeric(2,0),
    rw numeric(2,0),
    nama_dusun character varying(60),
    desa_kelurahan character varying(60),
    kode_wilayah character(8),
    kode_pos character(5),
    lintang numeric(18,12),
    bujur numeric(18,12),
    nomor_telepon character varying(20),
    nomor_fax character varying(20),
    email character varying(60),
    website character varying(100),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 '   DROP TABLE public.lembaga_non_sekolah;
       public            postgres    false    15                       0    0    TABLE lembaga_non_sekolah    ACL     ;   GRANT SELECT ON TABLE public.lembaga_non_sekolah TO tikom;
          public          postgres    false    410            �           1259    268085    mou    TABLE     .  CREATE TABLE public.mou (
    mou_id uuid,
    id_jns_ks numeric(6,0),
    dudi_id uuid,
    sekolah_id uuid,
    nomor_mou character varying(80),
    judul_mou character varying(80),
    tanggal_mulai date,
    tanggal_selesai date,
    nama_dudi character varying(100),
    npwp_dudi character(15),
    nama_bidang_usaha character varying(40),
    telp_kantor character varying(20),
    fax character varying(20),
    contact_person character varying(100),
    telp_cp character varying(20),
    jabatan_cp character varying(40),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.mou;
       public            postgres    false    15            �           0    0 	   TABLE mou    ACL     +   GRANT SELECT ON TABLE public.mou TO tikom;
          public          postgres    false    411            �           1259    268094 
   nilai_test    TABLE     �  CREATE TABLE public.nilai_test (
    nilai_test_id uuid,
    jenis_test_id numeric(3,0),
    ptk_id uuid,
    nama character varying(50),
    penyelenggara character varying(100),
    tahun numeric(4,0),
    skor numeric(6,2),
    skor1 numeric(6,2),
    skor2 numeric(6,2),
    skor3 numeric(6,2),
    skor4 numeric(6,2),
    skor5 numeric(6,2),
    nomor_peserta character varying(12),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.nilai_test;
       public            postgres    false    15            �           0    0    TABLE nilai_test    ACL     2   GRANT SELECT ON TABLE public.nilai_test TO tikom;
          public          postgres    false    412            �           1259    268101 	   paspor_pd    TABLE     �  CREATE TABLE public.paspor_pd (
    no_paspor character varying(20),
    peserta_didik_id uuid,
    tempat_terbit character varying(100),
    tmt_paspor date,
    tst_paspor date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.paspor_pd;
       public            postgres    false    15            �           0    0    TABLE paspor_pd    ACL     1   GRANT SELECT ON TABLE public.paspor_pd TO tikom;
          public          postgres    false    413            �           1259    268107 
   paspor_ptk    TABLE     �  CREATE TABLE public.paspor_ptk (
    no_paspor character varying(20),
    ptk_id uuid,
    tempat_terbit character varying(100),
    tmt_paspor date,
    tst_paspor date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.paspor_ptk;
       public            postgres    false    15            �           0    0    TABLE paspor_ptk    ACL     2   GRANT SELECT ON TABLE public.paspor_ptk TO tikom;
          public          postgres    false    414            �           1259    268113    pembelajaran    TABLE     �  CREATE TABLE public.pembelajaran (
    pembelajaran_id uuid,
    rombongan_belajar_id uuid,
    semester_id character(5),
    mata_pelajaran_id integer,
    ptk_terdaftar_id uuid,
    sk_mengajar character varying(80),
    tanggal_sk_mengajar date,
    jam_mengajar_per_minggu numeric(2,0),
    status_di_kurikulum numeric(2,0),
    nama_mata_pelajaran character varying(50),
    induk_pembelajaran_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
     DROP TABLE public.pembelajaran;
       public            postgres    false    15            �           0    0    TABLE pembelajaran    ACL     4   GRANT SELECT ON TABLE public.pembelajaran TO tikom;
          public          postgres    false    415            �           1259    268119    pengawas_terdaftar    TABLE     �  CREATE TABLE public.pengawas_terdaftar (
    pengawas_terdaftar_id uuid,
    lembaga_id uuid,
    ptk_id uuid,
    tahun_ajaran_id numeric(4,0),
    nomor_surat_tugas character varying(80),
    tanggal_surat_tugas date,
    tmt_tugas date,
    mata_pelajaran_id integer,
    bidang_studi_id integer,
    jenjang_kepengawasan_id numeric(2,0),
    aktif_bulan_01 numeric(1,0) DEFAULT 0,
    aktif_bulan_02 numeric(1,0) DEFAULT 0,
    aktif_bulan_03 numeric(1,0) DEFAULT 0,
    aktif_bulan_04 numeric(1,0) DEFAULT 0,
    aktif_bulan_05 numeric(1,0) DEFAULT 0,
    aktif_bulan_06 numeric(1,0) DEFAULT 0,
    aktif_bulan_07 numeric(1,0) DEFAULT 0,
    aktif_bulan_08 numeric(1,0) DEFAULT 0,
    aktif_bulan_09 numeric(1,0) DEFAULT 0,
    aktif_bulan_10 numeric(1,0) DEFAULT 0,
    aktif_bulan_11 numeric(1,0) DEFAULT 0,
    aktif_bulan_12 numeric(1,0) DEFAULT 0,
    jenis_keluar_id character(1),
    tgl_pengawas_keluar date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 &   DROP TABLE public.pengawas_terdaftar;
       public            postgres    false    15            �           0    0    TABLE pengawas_terdaftar    ACL     :   GRANT SELECT ON TABLE public.pengawas_terdaftar TO tikom;
          public          postgres    false    416            �           1259    268137    penghargaan    TABLE     9  CREATE TABLE public.penghargaan (
    penghargaan_id uuid,
    tingkat_penghargaan_id integer,
    ptk_id uuid,
    jenis_penghargaan_id integer,
    nama character varying(50),
    tahun numeric(4,0),
    instansi character varying(100),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.penghargaan;
       public            postgres    false    15            �           0    0    TABLE penghargaan    ACL     3   GRANT SELECT ON TABLE public.penghargaan TO tikom;
          public          postgres    false    417            �           1259    268144    peserta_didik    TABLE     	  CREATE TABLE public.peserta_didik (
    peserta_didik_id uuid,
    nama character varying(100),
    jenis_kelamin character(1),
    nisn character(10),
    nik character(16),
    no_kk character(16),
    tempat_lahir character varying(32),
    tanggal_lahir date,
    agama_id smallint,
    kebutuhan_khusus_id integer,
    alamat_jalan character varying(80),
    rt numeric(2,0),
    rw numeric(2,0),
    nama_dusun character varying(60),
    desa_kelurahan character varying(60),
    kode_wilayah character(8),
    kode_pos character(5),
    lintang numeric(18,12),
    bujur numeric(18,12),
    jenis_tinggal_id numeric(2,0),
    alat_transportasi_id numeric(2,0),
    nik_ayah character(16),
    nik_ibu character(16),
    anak_keberapa numeric(2,0),
    nik_wali character(16),
    nomor_telepon_rumah character varying(20),
    nomor_telepon_seluler character varying(20),
    email character varying(60),
    penerima_kps numeric(1,0),
    no_kps character varying(80),
    layak_pip numeric(1,0) DEFAULT 0,
    penerima_kip numeric(1,0),
    no_kip character varying(6),
    nm_kip character varying(100),
    no_kks character varying(6),
    reg_akta_lahir character varying(80),
    id_layak_pip numeric(2,0),
    id_bank character(3),
    rekening_bank character varying(20),
    nama_kcp character varying(100),
    rekening_atas_nama character varying(100),
    status_data integer,
    nama_ayah character varying(100),
    tahun_lahir_ayah numeric(4,0),
    jenjang_pendidikan_ayah numeric(2,0),
    pekerjaan_id_ayah integer,
    penghasilan_id_ayah integer,
    kebutuhan_khusus_id_ayah integer,
    nama_ibu_kandung character varying(100),
    tahun_lahir_ibu numeric(4,0),
    jenjang_pendidikan_ibu numeric(2,0),
    penghasilan_id_ibu integer,
    pekerjaan_id_ibu integer,
    kebutuhan_khusus_id_ibu integer,
    nama_wali character varying(30),
    tahun_lahir_wali numeric(4,0),
    jenjang_pendidikan_wali numeric(2,0),
    pekerjaan_id_wali integer,
    penghasilan_id_wali integer,
    kewarganegaraan character(2),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.peserta_didik;
       public            postgres    false    15            �           0    0    TABLE peserta_didik    ACL     5   GRANT SELECT ON TABLE public.peserta_didik TO tikom;
          public          postgres    false    418            �           1259    268154    peserta_didik_baru    TABLE       CREATE TABLE public.peserta_didik_baru (
    pdb_id uuid,
    sekolah_id uuid,
    tahun_ajaran_id numeric(4,0),
    nama_pd character varying(100),
    jenis_kelamin character(1),
    nisn character(10),
    nik character(16),
    tempat_lahir character varying(32),
    tanggal_lahir date,
    nama_ibu_kandung character varying(100),
    jenis_pendaftaran_id numeric(1,0),
    sudah_diproses numeric(1,0) DEFAULT 0,
    berhasil_diproses numeric(1,0) DEFAULT 0,
    peserta_didik_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 &   DROP TABLE public.peserta_didik_baru;
       public            postgres    false    15            �           0    0    TABLE peserta_didik_baru    ACL     :   GRANT SELECT ON TABLE public.peserta_didik_baru TO tikom;
          public          postgres    false    419            �           1259    268162    peserta_didik_longitudinal    TABLE     �  CREATE TABLE public.peserta_didik_longitudinal (
    peserta_didik_id uuid,
    semester_id character(5),
    tinggi_badan numeric(3,0),
    berat_badan numeric(3,0),
    lingkar_kepala numeric(3,0),
    jarak_rumah_ke_sekolah numeric(1,0),
    jarak_rumah_ke_sekolah_km numeric(3,0),
    waktu_tempuh_ke_sekolah numeric(1,0),
    menit_tempuh_ke_sekolah numeric(3,0),
    jumlah_saudara_kandung numeric(2,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 .   DROP TABLE public.peserta_didik_longitudinal;
       public            postgres    false    15            �           0    0     TABLE peserta_didik_longitudinal    ACL     B   GRANT SELECT ON TABLE public.peserta_didik_longitudinal TO tikom;
          public          postgres    false    420            �           1259    268168    prestasi    TABLE     \  CREATE TABLE public.prestasi (
    prestasi_id uuid,
    jenis_prestasi_id integer,
    tingkat_prestasi_id integer,
    peserta_didik_id uuid,
    nama character varying(40),
    tahun_prestasi numeric(4,0),
    penyelenggara character varying(100),
    peringkat integer,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.prestasi;
       public            postgres    false    15            �           0    0    TABLE prestasi    ACL     0   GRANT SELECT ON TABLE public.prestasi TO tikom;
          public          postgres    false    421            �           1259    268175    program_inklusi    TABLE     0  CREATE TABLE public.program_inklusi (
    id_pi uuid,
    sekolah_id uuid,
    kebutuhan_khusus_id integer,
    sk_pi character varying(80),
    tgl_sk_pi date,
    tmt_pi date,
    tst_pi date,
    ket_pi character varying(200),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.program_inklusi;
       public            postgres    false    15            �           0    0    TABLE program_inklusi    ACL     7   GRANT SELECT ON TABLE public.program_inklusi TO tikom;
          public          postgres    false    422            �           1259    268193    ptk_baru    TABLE     �  CREATE TABLE public.ptk_baru (
    ptk_baru_id uuid,
    sekolah_id uuid,
    tahun_ajaran_id numeric(4,0),
    nama_ptk character varying(100),
    jenis_kelamin character(1),
    nuptk character(16),
    nik character(16),
    tempat_lahir character varying(32),
    tanggal_lahir date,
    nama_ibu_kandung character varying(100),
    sudah_diproses numeric(1,0) DEFAULT 0,
    berhasil_diproses numeric(1,0) DEFAULT 0,
    ptk_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.ptk_baru;
       public            postgres    false    15            �           0    0    TABLE ptk_baru    ACL     0   GRANT SELECT ON TABLE public.ptk_baru TO tikom;
          public          postgres    false    424            �           1259    268219    registrasi_peserta_didik    TABLE     �  CREATE TABLE public.registrasi_peserta_didik (
    registrasi_id uuid,
    jurusan_sp_id uuid,
    peserta_didik_id uuid,
    sekolah_id uuid,
    jenis_pendaftaran_id numeric(1,0),
    nipd character varying(18),
    tanggal_masuk_sekolah date,
    jenis_keluar_id character(1),
    tanggal_keluar date,
    keterangan character varying(128),
    no_skhun character(20),
    no_peserta_ujian character(20),
    no_seri_ijazah character varying(80),
    a_pernah_paud numeric(1,0) DEFAULT 0,
    a_pernah_tk numeric(1,0) DEFAULT 0,
    sekolah_asal character varying(100),
    id_hobby numeric(5,0),
    id_cita numeric(5,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 ,   DROP TABLE public.registrasi_peserta_didik;
       public            postgres    false    15            �           0    0    TABLE registrasi_peserta_didik    ACL     @   GRANT SELECT ON TABLE public.registrasi_peserta_didik TO tikom;
          public          postgres    false    426            �           1259    268227    riwayat_gaji_berkala    TABLE     L  CREATE TABLE public.riwayat_gaji_berkala (
    riwayat_gaji_berkala_id uuid,
    ptk_id uuid,
    pangkat_golongan_id numeric(2,0),
    nomor_sk character varying(80),
    tanggal_sk date,
    tmt_kgb date,
    masa_kerja_tahun numeric(2,0),
    masa_kerja_bulan numeric(2,0),
    gaji_pokok numeric(9,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 (   DROP TABLE public.riwayat_gaji_berkala;
       public            postgres    false    15            �           0    0    TABLE riwayat_gaji_berkala    ACL     <   GRANT SELECT ON TABLE public.riwayat_gaji_berkala TO tikom;
          public          postgres    false    427            �           1259    268233    rombongan_belajar    TABLE     �  CREATE TABLE public.rombongan_belajar (
    rombongan_belajar_id uuid,
    semester_id character(5),
    id_ruang uuid,
    sekolah_id uuid,
    tingkat_pendidikan_id numeric(2,0),
    jurusan_sp_id uuid,
    kurikulum_id smallint,
    nama character varying(30),
    ptk_id uuid,
    moving_class numeric(1,0),
    jenis_rombel numeric(2,0),
    sks numeric(2,0) DEFAULT 0,
    kebutuhan_khusus_id integer,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 %   DROP TABLE public.rombongan_belajar;
       public            postgres    false    15            �           0    0    TABLE rombongan_belajar    ACL     9   GRANT SELECT ON TABLE public.rombongan_belajar TO tikom;
          public          postgres    false    428            �           1259    268240    ruang    TABLE     �  CREATE TABLE public.ruang (
    id_ruang uuid,
    jenis_prasarana_id integer,
    sekolah_id uuid,
    id_bangunan uuid,
    kd_ruang character varying(10),
    nm_ruang character varying(100),
    lantai numeric(3,0) DEFAULT 1,
    panjang double precision,
    lebar double precision,
    reg_pras character varying(16),
    kapasitas numeric(5,0),
    luas_ruang double precision,
    luas_plester_m2 numeric(7,1),
    luas_plafon_m2 numeric(7,1),
    luas_dinding_m2 numeric(7,1),
    luas_daun_jendela_m2 numeric(7,1),
    luas_daun_pintu_m2 numeric(7,1),
    panj_kusen_m numeric(7,1),
    luas_tutup_lantai_m2 numeric(7,1),
    panj_inst_listrik_m numeric(7,1),
    jml_inst_listrik numeric(4,0),
    panj_inst_air_m numeric(7,1),
    jml_inst_air numeric(4,0),
    panj_drainase_m numeric(7,1),
    luas_finish_struktur_m2 numeric(7,1),
    luas_finish_plafon_m2 numeric(7,1),
    luas_finish_dinding_m2 numeric(7,1),
    luas_finish_kpj_m2 numeric(7,1),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.ruang;
       public            postgres    false    15            �           0    0    TABLE ruang    ACL     -   GRANT SELECT ON TABLE public.ruang TO tikom;
          public          postgres    false    429            �           1259    268247    ruang_longitudinal    TABLE     b  CREATE TABLE public.ruang_longitudinal (
    id_ruang uuid,
    semester_id character(5),
    blob_id uuid,
    rusak_lisplang_talang numeric(6,2) DEFAULT 0,
    ket_lisplang_talang character varying(120),
    rusak_rangka_plafon numeric(6,2) DEFAULT 0,
    ket_rangka_plafon character varying(120),
    rusak_tutup_plafon numeric(6,2) DEFAULT 0,
    ket_tutup_plafon character varying(120),
    rusak_bata_dinding numeric(6,2) DEFAULT 0,
    ket_bata_dinding character varying(120),
    rusak_plester_dinding numeric(6,2) DEFAULT 0,
    ket_plester_dinding character varying(120),
    rusak_daun_jendela numeric(6,2) DEFAULT 0,
    ket_daun_jendela character varying(120),
    rusak_daun_pintu numeric(6,2) DEFAULT 0,
    ket_daun_pintu character varying(120),
    rusak_kusen numeric(6,2) DEFAULT 0,
    ket_kusen character varying(120),
    rusak_tutup_lantai numeric(6,2) DEFAULT 0,
    ket_penutup_lantai character varying(120),
    rusak_inst_listrik numeric(6,2) DEFAULT 0,
    ket_inst_listrik character varying(120),
    rusak_inst_air numeric(6,2) DEFAULT 0,
    ket_inst_air character varying(120),
    rusak_drainase numeric(6,2) DEFAULT 0,
    ket_drainase character varying(120),
    rusak_finish_struktur numeric(6,2) DEFAULT 0,
    ket_finish_struktur character varying(120),
    rusak_finish_plafon numeric(6,2) DEFAULT 0,
    ket_finish_plafon character varying(120),
    rusak_finish_dinding numeric(6,2) DEFAULT 0,
    ket_finish_dinding character varying(120),
    rusak_finish_kpj numeric(6,2) DEFAULT 0,
    ket_finish_kpj character varying(120),
    berfungsi numeric(1,0) DEFAULT 1,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 &   DROP TABLE public.ruang_longitudinal;
       public            postgres    false    15            �           0    0    TABLE ruang_longitudinal    ACL     :   GRANT SELECT ON TABLE public.ruang_longitudinal TO tikom;
          public          postgres    false    430            �           1259    268273    rwy_fungsional    TABLE       CREATE TABLE public.rwy_fungsional (
    riwayat_fungsional_id uuid,
    ptk_id uuid,
    jabatan_fungsional_id numeric(5,0),
    sk_jabfung character varying(80),
    tmt_jabatan date,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.rwy_fungsional;
       public            postgres    false    15            �           0    0    TABLE rwy_fungsional    ACL     6   GRANT SELECT ON TABLE public.rwy_fungsional TO tikom;
          public          postgres    false    431            �           1259    268280    rwy_kepangkatan    TABLE     e  CREATE TABLE public.rwy_kepangkatan (
    riwayat_kepangkatan_id uuid,
    ptk_id uuid,
    pangkat_golongan_id numeric(2,0),
    nomor_sk character varying(80),
    tanggal_sk date,
    tmt_pangkat date,
    masa_kerja_gol_tahun numeric(2,0),
    masa_kerja_gol_bulan numeric(2,0),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.rwy_kepangkatan;
       public            postgres    false    15            �           0    0    TABLE rwy_kepangkatan    ACL     7   GRANT SELECT ON TABLE public.rwy_kepangkatan TO tikom;
          public          postgres    false    432            �           1259    268287 	   rwy_kerja    TABLE       CREATE TABLE public.rwy_kerja (
    rwy_kerja_id uuid,
    jenjang_pendidikan_id numeric(2,0),
    jenis_lembaga_id numeric(5,0),
    status_kepegawaian_id smallint,
    ptk_id uuid,
    jenis_ptk_id numeric(2,0),
    lembaga_pengangkat character varying(100),
    no_sk_kerja character varying(80),
    tgl_sk_kerja date,
    tmt_kerja date,
    tst_kerja date,
    tempat_kerja character varying(100),
    ttd_sk_kerja character varying(80),
    mapel_diajarkan character varying(80),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.rwy_kerja;
       public            postgres    false    15            �           0    0    TABLE rwy_kerja    ACL     1   GRANT SELECT ON TABLE public.rwy_kerja TO tikom;
          public          postgres    false    433            �           1259    268293    rwy_pend_formal    TABLE     $  CREATE TABLE public.rwy_pend_formal (
    riwayat_pendidikan_formal_id uuid,
    bidang_studi_id integer,
    jenjang_pendidikan_id numeric(2,0),
    gelar_akademik_id integer,
    ptk_id uuid,
    satuan_pendidikan_formal character varying(100),
    fakultas character varying(30),
    kependidikan numeric(1,0),
    tahun_masuk numeric(4,0),
    tahun_lulus numeric(4,0),
    nim character varying(12),
    status_kuliah numeric(1,0),
    semester numeric(2,0),
    ipk numeric(5,2),
    prodi uuid,
    id_reg_pd uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.rwy_pend_formal;
       public            postgres    false    15            �           0    0    TABLE rwy_pend_formal    ACL     7   GRANT SELECT ON TABLE public.rwy_pend_formal TO tikom;
          public          postgres    false    434            �           1259    268299    rwy_sertifikasi    TABLE     ~  CREATE TABLE public.rwy_sertifikasi (
    riwayat_sertifikasi_id uuid,
    ptk_id uuid,
    bidang_studi_id integer,
    id_jenis_sertifikasi numeric(3,0),
    tahun_sertifikasi numeric(4,0),
    nomor_sertifikat character varying(80),
    nrg character varying(14),
    nomor_peserta character varying(14),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.rwy_sertifikasi;
       public            postgres    false    15            �           0    0    TABLE rwy_sertifikasi    ACL     7   GRANT SELECT ON TABLE public.rwy_sertifikasi TO tikom;
          public          postgres    false    435            �           1259    268306    rwy_struktural    TABLE     �  CREATE TABLE public.rwy_struktural (
    riwayat_struktural_id uuid,
    ptk_id uuid,
    jabatan_ptk_id numeric(5,0),
    sk_struktural character varying(80),
    tmt_jabatan date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.rwy_struktural;
       public            postgres    false    15            �           0    0    TABLE rwy_struktural    ACL     6   GRANT SELECT ON TABLE public.rwy_struktural TO tikom;
          public          postgres    false    436            �           1259    268312    sanitasi    TABLE     [  CREATE TABLE public.sanitasi (
    sekolah_id uuid,
    semester_id character(5),
    sumber_air_id numeric(2,0),
    ketersediaan_air numeric(1,0),
    kecukupan_air numeric(1,0),
    minum_siswa numeric(1,0),
    memproses_air numeric(1,0),
    siswa_bawa_air numeric(1,0),
    toilet_siswa_laki numeric(2,0),
    toilet_siswa_perempuan numeric(2,0),
    toilet_siswa_kk numeric(2,0),
    toilet_siswa_kecil numeric(1,0),
    tipe_jamban character(1) DEFAULT '9'::bpchar,
    jml_jamban_l_g numeric(2,0) DEFAULT 0,
    jml_jamban_l_tg numeric(2,0) DEFAULT 0,
    jml_jamban_p_g numeric(2,0) DEFAULT 0,
    jml_jamban_p_tg numeric(2,0) DEFAULT 0,
    jml_jamban_lp_g numeric(2,0) DEFAULT 0,
    jml_jamban_lp_tg numeric(2,0) DEFAULT 0,
    tempat_cuci_tangan numeric(2,0) DEFAULT 0,
    a_sabun_air_mengalir numeric(1,0) DEFAULT 0,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.sanitasi;
       public            postgres    false    15            �           0    0    TABLE sanitasi    ACL     0   GRANT SELECT ON TABLE public.sanitasi TO tikom;
          public          postgres    false    437            �           1259    268327    sasaran_pengawasan    TABLE     x  CREATE TABLE public.sasaran_pengawasan (
    pengawas_terdaftar_id uuid,
    sekolah_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 &   DROP TABLE public.sasaran_pengawasan;
       public            postgres    false    15            �           0    0    TABLE sasaran_pengawasan    ACL     :   GRANT SELECT ON TABLE public.sasaran_pengawasan TO tikom;
          public          postgres    false    438            �           1259    268343    sekolah_longitudinal    TABLE     �  CREATE TABLE public.sekolah_longitudinal (
    sekolah_id uuid,
    semester_id character(5),
    waktu_penyelenggaraan_id numeric(1,0),
    kontinuitas_listrik character(1) DEFAULT '1'::bpchar,
    jarak_listrik numeric(10,0),
    wilayah_terpencil numeric(1,0),
    wilayah_perbatasan numeric(1,0),
    wilayah_transmigrasi numeric(1,0),
    wilayah_adat_terpencil numeric(1,0),
    wilayah_bencana_alam numeric(1,0),
    wilayah_bencana_sosial numeric(1,0),
    partisipasi_bos numeric(1,0) DEFAULT 1,
    sertifikasi_iso_id smallint,
    sumber_listrik_id numeric(2,0),
    daya_listrik numeric(6,0),
    akses_internet_id smallint,
    akses_internet_2_id smallint,
    blob_id uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 (   DROP TABLE public.sekolah_longitudinal;
       public            postgres    false    15            �           0    0    TABLE sekolah_longitudinal    ACL     <   GRANT SELECT ON TABLE public.sekolah_longitudinal TO tikom;
          public          postgres    false    440            �           1259    268351    sertifikasi_pd    TABLE     X  CREATE TABLE public.sertifikasi_pd (
    id_sert_pd uuid,
    id_jenis_sertifikasi numeric(3,0),
    peserta_didik_id uuid,
    bidang_studi_id integer,
    no_sert_pd character varying(30),
    tgl_sert_pd date,
    tgl_exp_sert_pd date,
    no_peserta_sert_pd character varying(30),
    kode_lemb_sert numeric(5,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.sertifikasi_pd;
       public            postgres    false    15            �           0    0    TABLE sertifikasi_pd    ACL     6   GRANT SELECT ON TABLE public.sertifikasi_pd TO tikom;
          public          postgres    false    441            �           1259    268357    sync_log    TABLE     >  CREATE TABLE public.sync_log (
    id_instalasi uuid,
    begin_sync timestamp(6) without time zone,
    end_sync timestamp(6) without time zone,
    sync_media character(1) DEFAULT '1'::bpchar,
    is_success numeric(1,0),
    selisih_waktu_server bigint,
    alamat_ip character varying(50),
    pengguna_id uuid
);
    DROP TABLE public.sync_log;
       public            postgres    false    15            �           0    0    TABLE sync_log    ACL     0   GRANT SELECT ON TABLE public.sync_log TO tikom;
          public          postgres    false    442            �           1259    268361    sync_primer    TABLE     �   CREATE TABLE public.sync_primer (
    table_name character varying(30),
    id_instalasi uuid,
    id_thread smallint,
    sync_ket character varying(100),
    sync_status smallint
);
    DROP TABLE public.sync_primer;
       public            postgres    false    15            �           0    0    TABLE sync_primer    ACL     3   GRANT SELECT ON TABLE public.sync_primer TO tikom;
          public          postgres    false    443            �           1259    268364    sync_session    TABLE     �   CREATE TABLE public.sync_session (
    token uuid,
    id_instalasi uuid,
    pengguna_id uuid,
    create_time timestamp(6) without time zone DEFAULT now(),
    last_activity timestamp(6) without time zone DEFAULT now()
);
     DROP TABLE public.sync_session;
       public            postgres    false    15            �           0    0    TABLE sync_session    ACL     4   GRANT SELECT ON TABLE public.sync_session TO tikom;
          public          postgres    false    444            �           1259    268369    table_sync_log    TABLE       CREATE TABLE public.table_sync_log (
    table_name character varying(30),
    id_instalasi uuid,
    begin_sync timestamp(6) without time zone,
    end_sync timestamp(6) without time zone,
    sync_media character(1) DEFAULT '1'::bpchar,
    is_success numeric(1,0),
    selisih_waktu_server bigint,
    n_create integer,
    n_update integer,
    n_hapus integer,
    n_konflik integer,
    last_update timestamp(6) without time zone,
    sync_page integer DEFAULT 0,
    alamat_ip character varying(50),
    pengguna_id uuid
);
 "   DROP TABLE public.table_sync_log;
       public            postgres    false    15            �           0    0    TABLE table_sync_log    ACL     6   GRANT SELECT ON TABLE public.table_sync_log TO tikom;
          public          postgres    false    445            �           1259    268374    tanah    TABLE     �  CREATE TABLE public.tanah (
    id_tanah uuid,
    jenis_prasarana_id integer,
    sekolah_id uuid,
    id_hapus_buku character(1),
    kepemilikan_sarpras_id numeric(1,0),
    kd_kl character(3),
    kd_satker character varying(20),
    kd_brg character varying(10),
    nup integer,
    kode_eselon1 character varying(2) DEFAULT NULL::character varying,
    nama_eselon1 character varying(255) DEFAULT NULL::character varying,
    kode_sub_satker character varying(3) DEFAULT NULL::character varying,
    nama_sub_satker character varying(255) DEFAULT NULL::character varying,
    nama character varying(100),
    panjang double precision,
    lebar double precision,
    nilai_perolehan_aset numeric(20,2),
    tgl_mutasi_keluar date,
    batas character varying(1),
    ket_tanah character varying(250),
    luas numeric(10,1),
    luas_lahan_tersedia numeric(10,1),
    no_sertifikat_tanah character varying(16),
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.tanah;
       public            postgres    false    15            �           0    0    TABLE tanah    ACL     -   GRANT SELECT ON TABLE public.tanah TO tikom;
          public          postgres    false    446            �           1259    268388    tanah_dari_blockgrant    TABLE     q  CREATE TABLE public.tanah_dari_blockgrant (
    blockgrant_id uuid,
    id_tanah uuid,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 )   DROP TABLE public.tanah_dari_blockgrant;
       public            postgres    false    15            �           0    0    TABLE tanah_dari_blockgrant    ACL     =   GRANT SELECT ON TABLE public.tanah_dari_blockgrant TO tikom;
          public          postgres    false    447            �           1259    268394    tanah_longitudinal    TABLE     �  CREATE TABLE public.tanah_longitudinal (
    id_tanah uuid,
    tahun_ajaran_id numeric(4,0),
    njop numeric(20,2),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 &   DROP TABLE public.tanah_longitudinal;
       public            postgres    false    15            �           0    0    TABLE tanah_longitudinal    ACL     :   GRANT SELECT ON TABLE public.tanah_longitudinal TO tikom;
          public          postgres    false    448            �           1259    268400    tracer_lulusan    TABLE     5  CREATE TABLE public.tracer_lulusan (
    id_tracer uuid,
    penghasilan_id integer,
    registrasi_id uuid,
    tgl_entry date,
    akt_setelah_lulus character(1),
    nm_inst_perusahaan character varying(100),
    nm_sp character varying(100),
    nm_prodi character varying(100),
    ket_tracer character varying(250),
    pekerjaan_id integer,
    dudi_id uuid,
    bidang_usaha_id character(10),
    id_prodi uuid,
    stat_tracer character(1),
    ikatan_kerja character(1) DEFAULT '*'::bpchar,
    a_sesuai_kompetensi numeric(1,0),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.tracer_lulusan;
       public            postgres    false    15            �           0    0    TABLE tracer_lulusan    ACL     6   GRANT SELECT ON TABLE public.tracer_lulusan TO tikom;
          public          postgres    false    449            �           1259    268410    tugas_tambahan    TABLE     (  CREATE TABLE public.tugas_tambahan (
    ptk_tugas_tambahan_id uuid,
    ptk_id uuid,
    id_ruang uuid,
    jabatan_ptk_id numeric(5,0),
    sekolah_id uuid,
    jumlah_jam numeric(2,0),
    nomor_sk character varying(80),
    tmt_tambahan date,
    tst_tambahan date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.tugas_tambahan;
       public            postgres    false    15            �           0    0    TABLE tugas_tambahan    ACL     6   GRANT SELECT ON TABLE public.tugas_tambahan TO tikom;
          public          postgres    false    450            �           1259    268416 	   tunjangan    TABLE     �  CREATE TABLE public.tunjangan (
    tunjangan_id uuid,
    ptk_id uuid,
    jenis_tunjangan_id integer,
    nama character varying(50),
    instansi character varying(100),
    sk_tunjangan character varying(80),
    tgl_sk_tunjangan date,
    semester_id character(5),
    sumber_dana character varying(30),
    dari_tahun numeric(4,0),
    sampai_tahun numeric(4,0),
    nominal numeric(16,2),
    status integer,
    asal_data character(1) DEFAULT '1'::bpchar,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.tunjangan;
       public            postgres    false    15            �           0    0    TABLE tunjangan    ACL     1   GRANT SELECT ON TABLE public.tunjangan TO tikom;
          public          postgres    false    451            �           1259    268423 
   unit_usaha    TABLE     �  CREATE TABLE public.unit_usaha (
    unit_usaha_id uuid,
    kelompok_usaha_id character(8),
    sekolah_id uuid,
    nama_unit_usaha character varying(100),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.unit_usaha;
       public            postgres    false    15            �           0    0    TABLE unit_usaha    ACL     2   GRANT SELECT ON TABLE public.unit_usaha TO tikom;
          public          postgres    false    452            �           1259    268429    unit_usaha_kerjasama    TABLE     �  CREATE TABLE public.unit_usaha_kerjasama (
    mou_id uuid,
    unit_usaha_id uuid,
    sumber_dana_id numeric(3,0),
    produk_barang_dihasilkan character varying(200),
    jasa_produksi_dihasilkan character varying(200),
    omzet_barang_perbulan numeric(18,0),
    omzet_jasa_perbulan numeric(18,0),
    prestasi_penghargaan character varying(200),
    pangsa_pasar_produk character varying(200),
    pangsa_pasar_jasa character varying(200),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 (   DROP TABLE public.unit_usaha_kerjasama;
       public            postgres    false    15            �           0    0    TABLE unit_usaha_kerjasama    ACL     <   GRANT SELECT ON TABLE public.unit_usaha_kerjasama TO tikom;
          public          postgres    false    453            �           1259    557519    v_sync_siswa    VIEW     7  CREATE VIEW public.v_sync_siswa AS
 SELECT DISTINCT sekolah.npsn,
    siswa.peserta_didik_id,
    replace((siswa.nama)::text, ''''::text, ''::text) AS nama,
    siswa.jenis_kelamin,
    siswa.nisn,
    siswa.nik,
    siswa.tempat_lahir,
    siswa.tanggal_lahir,
    siswa.agama_id,
    siswa.alamat_jalan,
    siswa.kode_wilayah,
    siswa.email,
    siswa.nama_ibu_kandung,
    rombel.nama AS nama_rombel,
    rombel.semester_id
   FROM (((public.peserta_didik siswa
     JOIN public.anggota_rombel ON ((anggota_rombel.peserta_didik_id = siswa.peserta_didik_id)))
     JOIN public.rombongan_belajar rombel ON ((rombel.rombongan_belajar_id = anggota_rombel.rombongan_belajar_id)))
     JOIN public.sekolah sekolah ON ((sekolah.sekolah_id = rombel.sekolah_id)))
  WHERE ((siswa.soft_delete = '0'::numeric) AND (anggota_rombel.soft_delete = '0'::numeric) AND (rombel.soft_delete = '0'::numeric) AND (sekolah.soft_delete = '0'::numeric) AND ((sekolah.bentuk_pendidikan_id = 13) OR (sekolah.bentuk_pendidikan_id = 15)) AND (substr((sekolah.kode_wilayah)::text, 1, 2) = '02'::text));
    DROP VIEW public.v_sync_siswa;
       public          tikom    false    418    418    418    418    428    374    374    374    418    418    418    418    418    418    418    418    418    439    439    439    439    439    428    428    428    428    15            �           1259    268438    validasi    TABLE       CREATE TABLE public.validasi (
    sekolah_id uuid,
    no_urut integer,
    id uuid,
    jenis_validasi character varying(100),
    table_name character varying(100),
    tipe integer DEFAULT 1,
    keterangan character varying(255) DEFAULT '1'::character varying
);
    DROP TABLE public.validasi;
       public            postgres    false    15            �           0    0    TABLE validasi    ACL     0   GRANT SELECT ON TABLE public.validasi TO tikom;
          public          postgres    false    454            �           1259    268443    versi_db    TABLE     �   CREATE TABLE public.versi_db (
    versi_id numeric(1,0) DEFAULT 1,
    versi character varying(20) DEFAULT '2.98a'::character varying,
    tanggal_update timestamp(6) without time zone
);
    DROP TABLE public.versi_db;
       public            postgres    false    15            �           0    0    TABLE versi_db    ACL     0   GRANT SELECT ON TABLE public.versi_db TO tikom;
          public          postgres    false    455            �           1259    404900    view_jurusan    VIEW     �  CREATE VIEW public.view_jurusan AS
 SELECT jurusan.jurusan_id,
    jurusan.nama_jurusan,
    jurusan.untuk_sma,
    jurusan.untuk_smk,
    jurusan.untuk_pt,
    jurusan.untuk_slb,
    jurusan.untuk_smklb,
    jurusan.jenjang_pendidikan_id,
    jurusan.jurusan_induk,
    jurusan.level_bidang_id,
    jurusan.create_date,
    jurusan.last_update,
    jurusan.expired_date,
    jurusan.last_sync
   FROM ref.jurusan;
    DROP VIEW public.view_jurusan;
       public          tikom    false    15            �           1259    404907    view_mst_wilayah    VIEW     9  CREATE VIEW public.view_mst_wilayah AS
 SELECT mst_wilayah.kode_wilayah,
    mst_wilayah.nama,
    mst_wilayah.id_level_wilayah,
    mst_wilayah.mst_kode_wilayah,
    mst_wilayah.negara_id,
    mst_wilayah.asal_wilayah,
    mst_wilayah.kode_bps,
    mst_wilayah.kode_dagri,
    mst_wilayah.kode_keu,
    mst_wilayah.id_prov,
    mst_wilayah.id_kabkota,
    mst_wilayah.id_kec,
    mst_wilayah.a_desa,
    mst_wilayah.a_kelurahan,
    mst_wilayah.create_date,
    mst_wilayah.last_update,
    mst_wilayah.expired_date,
    mst_wilayah.last_sync
   FROM ref.mst_wilayah;
 #   DROP VIEW public.view_mst_wilayah;
       public          tikom    false    15            �           1259    463119    view_pd    VIEW     D  CREATE VIEW public.view_pd AS
 SELECT DISTINCT d.npsn,
    a.peserta_didik_id,
    a.nama,
    a.jenis_kelamin,
    a.nisn,
    a.nik,
    a.tempat_lahir,
    a.tanggal_lahir,
    a.agama_id,
    a.alamat_jalan,
    a.kode_wilayah,
    a.email,
    a.nama_ibu_kandung
   FROM (((public.peserta_didik a
     JOIN public.anggota_rombel b ON ((b.peserta_didik_id = a.peserta_didik_id)))
     JOIN public.rombongan_belajar c ON ((c.rombongan_belajar_id = b.rombongan_belajar_id)))
     JOIN public.sekolah d ON ((d.sekolah_id = c.sekolah_id)))
  WHERE (a.soft_delete = '0'::numeric);
    DROP VIEW public.view_pd;
       public          tikom    false    418    418    418    439    439    428    428    418    418    418    418    418    418    418    418    418    374    374    418    15            �           1259    415716    view_rekap_siswa    VIEW       CREATE VIEW public.view_rekap_siswa WITH (security_barrier='false') AS
 SELECT DISTINCT d.sekolah_id,
    d.npsn,
    d.nama AS nama_sekolah,
    count(*) AS jumlah
   FROM (((public.peserta_didik a
     JOIN public.anggota_rombel b ON ((b.peserta_didik_id = a.peserta_didik_id)))
     JOIN public.rombongan_belajar c ON ((c.rombongan_belajar_id = b.rombongan_belajar_id)))
     JOIN public.sekolah d ON ((c.sekolah_id = d.sekolah_id)))
  WHERE ((a.soft_delete = '0'::numeric) AND (b.soft_delete = (0)::numeric) AND (c.soft_delete = (0)::numeric) AND (d.soft_delete = (0)::numeric) AND (substr((d.kode_wilayah)::text, 1, 2) = '02'::text) AND ((d.bentuk_pendidikan_id = 13) OR (d.bentuk_pendidikan_id = 15)) AND (c.jenis_rombel = (1)::numeric))
  GROUP BY d.sekolah_id, d.npsn, d.nama;
 #   DROP VIEW public.view_rekap_siswa;
       public          tikom    false    439    374    374    374    418    418    428    428    428    428    439    439    439    439    439    15            �           1259    408522    view_rombel    VIEW     �  CREATE VIEW public.view_rombel AS
 SELECT c.npsn,
    a.rombongan_belajar_id,
    a.semester_id,
    d.jurusan_id,
    f.nama_jurusan,
    a.tingkat_pendidikan_id,
    a.nama,
    a.jenis_rombel,
    b.peserta_didik_id,
    a.ptk_id
   FROM ((((public.rombongan_belajar a
     JOIN public.anggota_rombel b ON ((b.rombongan_belajar_id = a.rombongan_belajar_id)))
     JOIN public.sekolah c ON ((c.sekolah_id = a.sekolah_id)))
     JOIN public.jurusan_sp d ON ((a.jurusan_sp_id = d.jurusan_sp_id)))
     JOIN ref.jurusan f ON (((f.jurusan_id)::text = (d.jurusan_id)::text)))
  WHERE ((a.soft_delete = '0'::numeric) AND ((c.bentuk_pendidikan_id = 13) OR (c.bentuk_pendidikan_id = 15)) AND (a.jenis_rombel = (1)::numeric) AND (a.semester_id = '20191'::bpchar));
    DROP VIEW public.view_rombel;
       public          tikom    false    428    428    428    428    428    428    428    428    401    401    374    374    439    439    439    428    15            �           1259    404870    view_sekolah    VIEW     �  CREATE VIEW public.view_sekolah AS
 SELECT sekolah.sekolah_id,
    sekolah.nama,
    sekolah.nama_nomenklatur,
    sekolah.nss,
    sekolah.npsn,
    sekolah.bentuk_pendidikan_id,
    sekolah.alamat_jalan,
    sekolah.rt,
    sekolah.rw,
    sekolah.nama_dusun,
    sekolah.desa_kelurahan,
    sekolah.kode_wilayah,
    sekolah.kode_pos,
    sekolah.lintang,
    sekolah.bujur,
    sekolah.nomor_telepon,
    sekolah.nomor_fax,
    sekolah.email,
    sekolah.website,
    sekolah.npwp,
    sekolah.nm_wp,
    sekolah.flag,
    sekolah.create_date,
    sekolah.last_update,
    sekolah.soft_delete,
    sekolah.last_sync,
    sekolah.updater_id
   FROM public.sekolah
  WHERE (sekolah.soft_delete = '0'::numeric);
    DROP VIEW public.view_sekolah;
       public          tikom    false    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    439    15            �           1259    405523    view_tata_usaha    VIEW     /  CREATE VIEW public.view_tata_usaha AS
 SELECT DISTINCT d.npsn,
    d.nama AS nama_sekolah,
    b.nama,
    b.nip,
    b.jenis_kelamin,
    b.tempat_lahir,
    b.tanggal_lahir,
    b.alamat_jalan,
    b.email
   FROM (((public.ptk b
     JOIN ref.jenis_ptk a ON ((a.jenis_ptk_id = b.jenis_ptk_id)))
     JOIN public.ptk_terdaftar c ON ((c.ptk_id = b.ptk_id)))
     JOIN public.sekolah d ON ((d.sekolah_id = c.sekolah_id)))
  WHERE (((a.jenis_ptk_id = '11'::numeric) AND (d.bentuk_pendidikan_id = '13'::smallint)) OR (d.bentuk_pendidikan_id = '15'::smallint));
 "   DROP VIEW public.view_tata_usaha;
       public          tikom    false    423    439    423    423    423    423    423    439    423    423    423    425    425    439    439    15            �           0    0    TABLE view_tata_usaha    ACL     }   REVOKE ALL ON TABLE public.view_tata_usaha FROM tikom;
GRANT ALL ON TABLE public.view_tata_usaha TO tikom WITH GRANT OPTION;
          public          tikom    false    751            �           1259    268448 
   vld_akt_pd    TABLE     5  CREATE TABLE public.vld_akt_pd (
    logid uuid,
    id_akt_pd uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_akt_pd;
       public            postgres    false    15            �           0    0    TABLE vld_akt_pd    ACL     2   GRANT SELECT ON TABLE public.vld_akt_pd TO tikom;
          public          postgres    false    456            �           1259    268457    vld_alat    TABLE     
  CREATE TABLE public.vld_alat (
    logid uuid,
    id_alat uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_alat;
       public            postgres    false    15            �           0    0    TABLE vld_alat    ACL     0   GRANT SELECT ON TABLE public.vld_alat TO tikom;
          public          postgres    false    457            �           1259    268463    vld_anak    TABLE     1  CREATE TABLE public.vld_anak (
    logid uuid,
    anak_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_anak;
       public            postgres    false    15            �           0    0    TABLE vld_anak    ACL     0   GRANT SELECT ON TABLE public.vld_anak TO tikom;
          public          postgres    false    458            �           1259    268472    vld_angkutan    TABLE     9  CREATE TABLE public.vld_angkutan (
    logid uuid,
    id_angkutan uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
     DROP TABLE public.vld_angkutan;
       public            postgres    false    15            �           0    0    TABLE vld_angkutan    ACL     4   GRANT SELECT ON TABLE public.vld_angkutan TO tikom;
          public          postgres    false    459            �           1259    268481    vld_bangunan    TABLE       CREATE TABLE public.vld_bangunan (
    logid uuid,
    id_bangunan uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
     DROP TABLE public.vld_bangunan;
       public            postgres    false    15            �           0    0    TABLE vld_bangunan    ACL     4   GRANT SELECT ON TABLE public.vld_bangunan TO tikom;
          public          postgres    false    460            �           1259    268487 
   vld_bea_pd    TABLE     E  CREATE TABLE public.vld_bea_pd (
    logid uuid,
    beasiswa_peserta_didik_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_bea_pd;
       public            postgres    false    15            �           0    0    TABLE vld_bea_pd    ACL     2   GRANT SELECT ON TABLE public.vld_bea_pd TO tikom;
          public          postgres    false    461            �           1259    268496    vld_bea_ptk    TABLE     <  CREATE TABLE public.vld_bea_ptk (
    logid uuid,
    beasiswa_ptk_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_bea_ptk;
       public            postgres    false    15            �           0    0    TABLE vld_bea_ptk    ACL     3   GRANT SELECT ON TABLE public.vld_bea_ptk TO tikom;
          public          postgres    false    462            �           1259    268505    vld_buku_ptk    TABLE     5  CREATE TABLE public.vld_buku_ptk (
    logid uuid,
    buku_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
     DROP TABLE public.vld_buku_ptk;
       public            postgres    false    15            �           0    0    TABLE vld_buku_ptk    ACL     4   GRANT SELECT ON TABLE public.vld_buku_ptk TO tikom;
          public          postgres    false    463            �           1259    268514    vld_demografi    TABLE     ;  CREATE TABLE public.vld_demografi (
    logid uuid,
    demografi_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.vld_demografi;
       public            postgres    false    15            �           0    0    TABLE vld_demografi    ACL     5   GRANT SELECT ON TABLE public.vld_demografi TO tikom;
          public          postgres    false    464            �           1259    268523    vld_dudi    TABLE     1  CREATE TABLE public.vld_dudi (
    logid uuid,
    idtype integer,
    dudi_id uuid,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_dudi;
       public            postgres    false    15            �           0    0    TABLE vld_dudi    ACL     0   GRANT SELECT ON TABLE public.vld_dudi TO tikom;
          public          postgres    false    465            �           1259    268532    vld_inpassing    TABLE     ;  CREATE TABLE public.vld_inpassing (
    logid uuid,
    inpassing_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.vld_inpassing;
       public            postgres    false    15            �           0    0    TABLE vld_inpassing    ACL     5   GRANT SELECT ON TABLE public.vld_inpassing TO tikom;
          public          postgres    false    466            �           1259    268541    vld_jurusan_sp    TABLE     =  CREATE TABLE public.vld_jurusan_sp (
    logid uuid,
    jurusan_sp_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.vld_jurusan_sp;
       public            postgres    false    15            �           0    0    TABLE vld_jurusan_sp    ACL     6   GRANT SELECT ON TABLE public.vld_jurusan_sp TO tikom;
          public          postgres    false    467            �           1259    268550    vld_karya_tulis    TABLE     ?  CREATE TABLE public.vld_karya_tulis (
    logid uuid,
    karya_tulis_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.vld_karya_tulis;
       public            postgres    false    15            �           0    0    TABLE vld_karya_tulis    ACL     7   GRANT SELECT ON TABLE public.vld_karya_tulis TO tikom;
          public          postgres    false    468            �           1259    268559    vld_kesejahteraan    TABLE     C  CREATE TABLE public.vld_kesejahteraan (
    logid uuid,
    kesejahteraan_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 %   DROP TABLE public.vld_kesejahteraan;
       public            postgres    false    15            �           0    0    TABLE vld_kesejahteraan    ACL     9   GRANT SELECT ON TABLE public.vld_kesejahteraan TO tikom;
          public          postgres    false    469            �           1259    268568    vld_mou    TABLE     /  CREATE TABLE public.vld_mou (
    logid uuid,
    mou_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_mou;
       public            postgres    false    15            �           0    0    TABLE vld_mou    ACL     /   GRANT SELECT ON TABLE public.vld_mou TO tikom;
          public          postgres    false    470            �           1259    268577    vld_nilai_rapor    TABLE     9  CREATE TABLE public.vld_nilai_rapor (
    logid uuid,
    nilai_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.vld_nilai_rapor;
       public            postgres    false    15            �           0    0    TABLE vld_nilai_rapor    ACL     7   GRANT SELECT ON TABLE public.vld_nilai_rapor TO tikom;
          public          postgres    false    471            �           1259    268586    vld_nilai_test    TABLE     =  CREATE TABLE public.vld_nilai_test (
    logid uuid,
    nilai_test_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.vld_nilai_test;
       public            postgres    false    15            �           0    0    TABLE vld_nilai_test    ACL     6   GRANT SELECT ON TABLE public.vld_nilai_test TO tikom;
          public          postgres    false    472            �           1259    268595    vld_nonsekolah    TABLE     :  CREATE TABLE public.vld_nonsekolah (
    logid uuid,
    lembaga_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 "   DROP TABLE public.vld_nonsekolah;
       public            postgres    false    15            �           0    0    TABLE vld_nonsekolah    ACL     6   GRANT SELECT ON TABLE public.vld_nonsekolah TO tikom;
          public          postgres    false    473            �           1259    268604    vld_pd_long    TABLE     [  CREATE TABLE public.vld_pd_long (
    logid uuid,
    peserta_didik_id uuid,
    semester_id character(5),
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_pd_long;
       public            postgres    false    15            �           0    0    TABLE vld_pd_long    ACL     3   GRANT SELECT ON TABLE public.vld_pd_long TO tikom;
          public          postgres    false    474            �           1259    268613    vld_pembelajaran    TABLE     A  CREATE TABLE public.vld_pembelajaran (
    logid uuid,
    pembelajaran_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 $   DROP TABLE public.vld_pembelajaran;
       public            postgres    false    15            �           0    0    TABLE vld_pembelajaran    ACL     8   GRANT SELECT ON TABLE public.vld_pembelajaran TO tikom;
          public          postgres    false    475            �           1259    268622    vld_penghargaan    TABLE     ?  CREATE TABLE public.vld_penghargaan (
    logid uuid,
    penghargaan_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 #   DROP TABLE public.vld_penghargaan;
       public            postgres    false    15            �           0    0    TABLE vld_penghargaan    ACL     7   GRANT SELECT ON TABLE public.vld_penghargaan TO tikom;
          public          postgres    false    476            �           1259    268631    vld_peserta_didik    TABLE       CREATE TABLE public.vld_peserta_didik (
    logid uuid,
    peserta_didik_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 %   DROP TABLE public.vld_peserta_didik;
       public            postgres    false    15            �           0    0    TABLE vld_peserta_didik    ACL     9   GRANT SELECT ON TABLE public.vld_peserta_didik TO tikom;
          public          postgres    false    477            �           1259    268637    vld_prestasi    TABLE     9  CREATE TABLE public.vld_prestasi (
    logid uuid,
    prestasi_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
     DROP TABLE public.vld_prestasi;
       public            postgres    false    15            �           0    0    TABLE vld_prestasi    ACL     4   GRANT SELECT ON TABLE public.vld_prestasi TO tikom;
          public          postgres    false    478            �           1259    268646    vld_ptk    TABLE       CREATE TABLE public.vld_ptk (
    logid uuid,
    ptk_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_ptk;
       public            postgres    false    15            �           0    0    TABLE vld_ptk    ACL     /   GRANT SELECT ON TABLE public.vld_ptk TO tikom;
          public          postgres    false    479            �           1259    268652    vld_ptk_terdaftar    TABLE     C  CREATE TABLE public.vld_ptk_terdaftar (
    logid uuid,
    ptk_terdaftar_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 %   DROP TABLE public.vld_ptk_terdaftar;
       public            postgres    false    15            �           0    0    TABLE vld_ptk_terdaftar    ACL     9   GRANT SELECT ON TABLE public.vld_ptk_terdaftar TO tikom;
          public          postgres    false    480            �           1259    268661 
   vld_reg_pd    TABLE     9  CREATE TABLE public.vld_reg_pd (
    logid uuid,
    idtype integer,
    registrasi_id uuid,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_reg_pd;
       public            postgres    false    15            �           0    0    TABLE vld_reg_pd    ACL     2   GRANT SELECT ON TABLE public.vld_reg_pd TO tikom;
          public          postgres    false    481            �           1259    268670 
   vld_rombel    TABLE     @  CREATE TABLE public.vld_rombel (
    logid uuid,
    rombongan_belajar_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_rombel;
       public            postgres    false    15            �           0    0    TABLE vld_rombel    ACL     2   GRANT SELECT ON TABLE public.vld_rombel TO tikom;
          public          postgres    false    482            �           1259    268679    vld_rwy_fungsional    TABLE     I  CREATE TABLE public.vld_rwy_fungsional (
    logid uuid,
    riwayat_fungsional_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 &   DROP TABLE public.vld_rwy_fungsional;
       public            postgres    false    15            �           0    0    TABLE vld_rwy_fungsional    ACL     :   GRANT SELECT ON TABLE public.vld_rwy_fungsional TO tikom;
          public          postgres    false    483            �           1259    268688    vld_rwy_kepangkatan    TABLE     K  CREATE TABLE public.vld_rwy_kepangkatan (
    logid uuid,
    riwayat_kepangkatan_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 '   DROP TABLE public.vld_rwy_kepangkatan;
       public            postgres    false    15            �           0    0    TABLE vld_rwy_kepangkatan    ACL     ;   GRANT SELECT ON TABLE public.vld_rwy_kepangkatan TO tikom;
          public          postgres    false    484            �           1259    268697    vld_rwy_kerja    TABLE     ;  CREATE TABLE public.vld_rwy_kerja (
    logid uuid,
    idtype integer,
    rwy_kerja_id uuid,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.vld_rwy_kerja;
       public            postgres    false    15            �           0    0    TABLE vld_rwy_kerja    ACL     5   GRANT SELECT ON TABLE public.vld_rwy_kerja TO tikom;
          public          postgres    false    485            �           1259    268706    vld_rwy_pend_formal    TABLE     Q  CREATE TABLE public.vld_rwy_pend_formal (
    logid uuid,
    riwayat_pendidikan_formal_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 '   DROP TABLE public.vld_rwy_pend_formal;
       public            postgres    false    15            �           0    0    TABLE vld_rwy_pend_formal    ACL     ;   GRANT SELECT ON TABLE public.vld_rwy_pend_formal TO tikom;
          public          postgres    false    486            �           1259    268715    vld_rwy_sertifikasi    TABLE     K  CREATE TABLE public.vld_rwy_sertifikasi (
    logid uuid,
    riwayat_sertifikasi_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 '   DROP TABLE public.vld_rwy_sertifikasi;
       public            postgres    false    15            �           0    0    TABLE vld_rwy_sertifikasi    ACL     ;   GRANT SELECT ON TABLE public.vld_rwy_sertifikasi TO tikom;
          public          postgres    false    487            �           1259    268724    vld_rwy_struktural    TABLE     I  CREATE TABLE public.vld_rwy_struktural (
    logid uuid,
    riwayat_struktural_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 &   DROP TABLE public.vld_rwy_struktural;
       public            postgres    false    15            �           0    0    TABLE vld_rwy_struktural    ACL     :   GRANT SELECT ON TABLE public.vld_rwy_struktural TO tikom;
          public          postgres    false    488            �           1259    268733    vld_sekolah    TABLE       CREATE TABLE public.vld_sekolah (
    logid uuid,
    sekolah_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_sekolah;
       public            postgres    false    15            �           0    0    TABLE vld_sekolah    ACL     3   GRANT SELECT ON TABLE public.vld_sekolah TO tikom;
          public          postgres    false    489            �           1259    268739 	   vld_tanah    TABLE     3  CREATE TABLE public.vld_tanah (
    logid uuid,
    id_tanah uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_tanah;
       public            postgres    false    15            �           0    0    TABLE vld_tanah    ACL     1   GRANT SELECT ON TABLE public.vld_tanah TO tikom;
          public          postgres    false    490            �           1259    268748    vld_tugas_tambahan    TABLE     I  CREATE TABLE public.vld_tugas_tambahan (
    logid uuid,
    ptk_tugas_tambahan_id uuid,
    updater_id uuid,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    idtype integer,
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    last_update timestamp(6) without time zone DEFAULT now()
);
 &   DROP TABLE public.vld_tugas_tambahan;
       public            postgres    false    15            �           0    0    TABLE vld_tugas_tambahan    ACL     :   GRANT SELECT ON TABLE public.vld_tugas_tambahan TO tikom;
          public          postgres    false    491            �           1259    268757    vld_tunjangan    TABLE     ;  CREATE TABLE public.vld_tunjangan (
    logid uuid,
    tunjangan_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
 !   DROP TABLE public.vld_tunjangan;
       public            postgres    false    15            �           0    0    TABLE vld_tunjangan    ACL     5   GRANT SELECT ON TABLE public.vld_tunjangan TO tikom;
          public          postgres    false    492            �           1259    268766    vld_un    TABLE     -  CREATE TABLE public.vld_un (
    logid uuid,
    un_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    app_username character varying(50),
    keterangan character varying(255),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_un;
       public            postgres    false    15            �           0    0    TABLE vld_un    ACL     .   GRANT SELECT ON TABLE public.vld_un TO tikom;
          public          postgres    false    493            �           1259    268775    vld_yayasan    TABLE     7  CREATE TABLE public.vld_yayasan (
    logid uuid,
    yayasan_id uuid,
    idtype integer,
    status_validasi numeric(2,0),
    field_error character varying(30),
    error_message character varying(150),
    keterangan character varying(255),
    app_username character varying(50),
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.vld_yayasan;
       public            postgres    false    15            �           0    0    TABLE vld_yayasan    ACL     3   GRANT SELECT ON TABLE public.vld_yayasan TO tikom;
          public          postgres    false    494            �           1259    268784    yayasan    TABLE     #  CREATE TABLE public.yayasan (
    yayasan_id uuid,
    nama character varying(100),
    alamat_jalan character varying(80),
    rt numeric(2,0),
    rw numeric(2,0),
    nama_dusun character varying(60),
    desa_kelurahan character varying(60),
    kode_wilayah character(8),
    kode_pos character(5),
    lintang numeric(18,12),
    bujur numeric(18,12),
    nomor_telepon character varying(20),
    nomor_fax character varying(20),
    email character varying(60),
    website character varying(100),
    npyp character(10),
    nama_pimpinan_yayasan character varying(100),
    no_pendirian_yayasan character varying(80),
    tanggal_pendirian_yayasan date,
    nomor_pengesahan_pn_ln character varying(30),
    nomor_sk_bn character varying(255),
    tanggal_sk_bn date,
    create_date timestamp(6) without time zone DEFAULT now(),
    last_update timestamp(6) without time zone DEFAULT now(),
    soft_delete numeric(1,0),
    last_sync timestamp(6) without time zone DEFAULT '1901-01-01 00:00:00'::timestamp without time zone,
    updater_id uuid
);
    DROP TABLE public.yayasan;
       public            postgres    false    15            �           0    0    TABLE yayasan    ACL     /   GRANT SELECT ON TABLE public.yayasan TO tikom;
          public          postgres    false    495            �           2606    403941    ptk ptk_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.ptk
    ADD CONSTRAINT ptk_pkey PRIMARY KEY (ptk_id);
 6   ALTER TABLE ONLY public.ptk DROP CONSTRAINT ptk_pkey;
       public            postgres    false    423            �           1259    268803    akred_lembaga_fk    INDEX     N   CREATE INDEX akred_lembaga_fk ON public.akreditasi_prodi USING btree (la_id);
 $   DROP INDEX public.akred_lembaga_fk;
       public            postgres    false    363            �           1259    268804    akred_prodi_fk    INDEX     T   CREATE INDEX akred_prodi_fk ON public.akreditasi_prodi USING btree (jurusan_sp_id);
 "   DROP INDEX public.akred_prodi_fk;
       public            postgres    false    363            �           1259    268807    akred_sp_la_fk    INDEX     I   CREATE INDEX akred_sp_la_fk ON public.akreditasi_sp USING btree (la_id);
 "   DROP INDEX public.akred_sp_la_fk;
       public            postgres    false    364            �           1259    268808    akred_sp_nilai_fk    INDEX     T   CREATE INDEX akred_sp_nilai_fk ON public.akreditasi_sp USING btree (akreditasi_id);
 %   DROP INDEX public.akred_sp_nilai_fk;
       public            postgres    false    364            �           1259    268805    akreditasi_prodi_pk    INDEX     a   CREATE UNIQUE INDEX akreditasi_prodi_pk ON public.akreditasi_prodi USING btree (akred_prodi_id);
 '   DROP INDEX public.akreditasi_prodi_pk;
       public            postgres    false    363            �           1259    268809    akreditasi_sp_pk    INDEX     X   CREATE UNIQUE INDEX akreditasi_sp_pk ON public.akreditasi_sp USING btree (akred_sp_id);
 $   DROP INDEX public.akreditasi_sp_pk;
       public            postgres    false    364            �           1259    268814 
   akt_pan_fk    INDEX     R   CREATE INDEX akt_pan_fk ON public.aktivitas_kepanitiaan USING btree (id_panitia);
    DROP INDEX public.akt_pan_fk;
       public            postgres    false    366            �           1259    268815    akt_pan_jenis_fk    INDEX     \   CREATE INDEX akt_pan_jenis_fk ON public.aktivitas_kepanitiaan USING btree (id_jns_akt_pan);
 $   DROP INDEX public.akt_pan_jenis_fk;
       public            postgres    false    366            �           1259    268816    akt_pan_sem_fk    INDEX     W   CREATE INDEX akt_pan_sem_fk ON public.aktivitas_kepanitiaan USING btree (semester_id);
 "   DROP INDEX public.akt_pan_sem_fk;
       public            postgres    false    366            �           1259    268835    akt_pd_anggota_fk    INDEX     Q   CREATE INDEX akt_pd_anggota_fk ON public.anggota_akt_pd USING btree (id_akt_pd);
 %   DROP INDEX public.akt_pd_anggota_fk;
       public            postgres    false    371            *           1259    268885    akt_pd_bimb_fk    INDEX     J   CREATE INDEX akt_pd_bimb_fk ON public.bimbing_pd USING btree (id_akt_pd);
 "   DROP INDEX public.akt_pd_bimb_fk;
       public            postgres    false    384            �           1259    268811    akt_pd_mou_fk    INDEX     B   CREATE INDEX akt_pd_mou_fk ON public.akt_pd USING btree (mou_id);
 !   DROP INDEX public.akt_pd_mou_fk;
       public            postgres    false    365            �           1259    268812 	   akt_pd_pk    INDEX     H   CREATE UNIQUE INDEX akt_pd_pk ON public.akt_pd USING btree (id_akt_pd);
    DROP INDEX public.akt_pd_pk;
       public            postgres    false    365            �           1259    268836    akt_pd_regpd_fk    INDEX     S   CREATE INDEX akt_pd_regpd_fk ON public.anggota_akt_pd USING btree (registrasi_id);
 #   DROP INDEX public.akt_pd_regpd_fk;
       public            postgres    false    371            �           1259    268817    aktivitas_kepanitiaan_pk    INDEX     g   CREATE UNIQUE INDEX aktivitas_kepanitiaan_pk ON public.aktivitas_kepanitiaan USING btree (id_akt_pan);
 ,   DROP INDEX public.aktivitas_kepanitiaan_pk;
       public            postgres    false    366            �           1259    269295    alamat_kecamatan_fk2    INDEX     P   CREATE INDEX alamat_kecamatan_fk2 ON public.yayasan USING btree (kode_wilayah);
 (   DROP INDEX public.alamat_kecamatan_fk2;
       public            postgres    false    495            �           1259    268984    alamat_kecamatan_fk3    INDEX     \   CREATE INDEX alamat_kecamatan_fk3 ON public.lembaga_non_sekolah USING btree (kode_wilayah);
 (   DROP INDEX public.alamat_kecamatan_fk3;
       public            postgres    false    410            �           1259    268825    alat_dari_blockgrant_pk    INDEX     q   CREATE UNIQUE INDEX alat_dari_blockgrant_pk ON public.alat_dari_blockgrant USING btree (blockgrant_id, id_alat);
 +   DROP INDEX public.alat_dari_blockgrant_pk;
       public            postgres    false    368    368            �           1259    268818    alat_pk    INDEX     B   CREATE UNIQUE INDEX alat_pk ON public.alat USING btree (id_alat);
    DROP INDEX public.alat_pk;
       public            postgres    false    367            �           1259    268829    anak_jenjang_fk    INDEX     Q   CREATE INDEX anak_jenjang_fk ON public.anak USING btree (jenjang_pendidikan_id);
 #   DROP INDEX public.anak_jenjang_fk;
       public            postgres    false    370            �           1259    268830    anak_ls    INDEX     =   CREATE INDEX anak_ls ON public.anak USING btree (last_sync);
    DROP INDEX public.anak_ls;
       public            postgres    false    370            �           1259    268831    anak_lu    INDEX     ?   CREATE INDEX anak_lu ON public.anak USING btree (last_update);
    DROP INDEX public.anak_lu;
       public            postgres    false    370            �           1259    268832    anak_pk    INDEX     B   CREATE UNIQUE INDEX anak_pk ON public.anak USING btree (anak_id);
    DROP INDEX public.anak_pk;
       public            postgres    false    370            �           1259    268833    anak_ptk_fk    INDEX     >   CREATE INDEX anak_ptk_fk ON public.anak USING btree (ptk_id);
    DROP INDEX public.anak_ptk_fk;
       public            postgres    false    370            �           1259    268834    anak_status_fk    INDEX     I   CREATE INDEX anak_status_fk ON public.anak USING btree (status_anak_id);
 "   DROP INDEX public.anak_status_fk;
       public            postgres    false    370            �           1259    268842    ang_pd_panitia_fk    INDEX     Y   CREATE INDEX ang_pd_panitia_fk ON public.anggota_panitia USING btree (peserta_didik_id);
 %   DROP INDEX public.ang_pd_panitia_fk;
       public            postgres    false    373            �           1259    268843    ang_ptk_panitia_fk    INDEX     P   CREATE INDEX ang_ptk_panitia_fk ON public.anggota_panitia USING btree (ptk_id);
 &   DROP INDEX public.ang_ptk_panitia_fk;
       public            postgres    false    373                       1259    268846    angg_rombel_jenis_daftar_fk    INDEX     f   CREATE INDEX angg_rombel_jenis_daftar_fk ON public.anggota_rombel USING btree (jenis_pendaftaran_id);
 /   DROP INDEX public.angg_rombel_jenis_daftar_fk;
       public            postgres    false    374            �           1259    268837    anggota_akt_pd_pk    INDEX     \   CREATE UNIQUE INDEX anggota_akt_pd_pk ON public.anggota_akt_pd USING btree (id_ang_akt_pd);
 %   DROP INDEX public.anggota_akt_pd_pk;
       public            postgres    false    371            �           1259    268838    anggota_gugus_ls    INDEX     O   CREATE INDEX anggota_gugus_ls ON public.anggota_gugus USING btree (last_sync);
 $   DROP INDEX public.anggota_gugus_ls;
       public            postgres    false    372            �           1259    268839    anggota_gugus_lu    INDEX     Q   CREATE INDEX anggota_gugus_lu ON public.anggota_gugus USING btree (last_update);
 $   DROP INDEX public.anggota_gugus_lu;
       public            postgres    false    372            �           1259    268840    anggota_gugus_pk    INDEX     a   CREATE UNIQUE INDEX anggota_gugus_pk ON public.anggota_gugus USING btree (gugus_id, sekolah_id);
 $   DROP INDEX public.anggota_gugus_pk;
       public            postgres    false    372    372            �           1259    268841    anggota_gugus_sekolah_fk    INDEX     X   CREATE INDEX anggota_gugus_sekolah_fk ON public.anggota_gugus USING btree (sekolah_id);
 ,   DROP INDEX public.anggota_gugus_sekolah_fk;
       public            postgres    false    372                        1259    268844    anggota_panitia_fk    INDEX     T   CREATE INDEX anggota_panitia_fk ON public.anggota_panitia USING btree (id_panitia);
 &   DROP INDEX public.anggota_panitia_fk;
       public            postgres    false    373                       1259    268845    anggota_panitia_pk    INDEX     _   CREATE UNIQUE INDEX anggota_panitia_pk ON public.anggota_panitia USING btree (id_ang_panitia);
 &   DROP INDEX public.anggota_panitia_pk;
       public            postgres    false    373                       1259    268847    anggota_rombel_ls    INDEX     Q   CREATE INDEX anggota_rombel_ls ON public.anggota_rombel USING btree (last_sync);
 %   DROP INDEX public.anggota_rombel_ls;
       public            postgres    false    374                       1259    268848    anggota_rombel_lu    INDEX     S   CREATE INDEX anggota_rombel_lu ON public.anggota_rombel USING btree (last_update);
 %   DROP INDEX public.anggota_rombel_lu;
       public            postgres    false    374                       1259    455940 #   anggota_rombel_peserta_didik_id_idx    INDEX     j   CREATE INDEX anggota_rombel_peserta_didik_id_idx ON public.anggota_rombel USING btree (peserta_didik_id);
 7   DROP INDEX public.anggota_rombel_peserta_didik_id_idx;
       public            postgres    false    374                       1259    268849    anggota_rombel_pk    INDEX     `   CREATE UNIQUE INDEX anggota_rombel_pk ON public.anggota_rombel USING btree (anggota_rombel_id);
 %   DROP INDEX public.anggota_rombel_pk;
       public            postgres    false    374                       1259    268857    angkutan_block_fk    INDEX     ]   CREATE INDEX angkutan_block_fk ON public.angkutan_dari_blockgrant USING btree (id_angkutan);
 %   DROP INDEX public.angkutan_block_fk;
       public            postgres    false    376                       1259    268858    angkutan_dari_blockgrant_pk    INDEX     }   CREATE UNIQUE INDEX angkutan_dari_blockgrant_pk ON public.angkutan_dari_blockgrant USING btree (blockgrant_id, id_angkutan);
 /   DROP INDEX public.angkutan_dari_blockgrant_pk;
       public            postgres    false    376    376                       1259    268851    angkutan_dipakai_oleh_fk    INDEX     O   CREATE INDEX angkutan_dipakai_oleh_fk ON public.angkutan USING btree (ptk_id);
 ,   DROP INDEX public.angkutan_dipakai_oleh_fk;
       public            postgres    false    375            	           1259    268852    angkutan_pk    INDEX     N   CREATE UNIQUE INDEX angkutan_pk ON public.angkutan USING btree (id_angkutan);
    DROP INDEX public.angkutan_pk;
       public            postgres    false    375            �           1259    269021 
   ayah_kk_fk    INDEX     X   CREATE INDEX ayah_kk_fk ON public.peserta_didik USING btree (kebutuhan_khusus_id_ayah);
    DROP INDEX public.ayah_kk_fk;
       public            postgres    false    418                       1259    268866    bangunan_dari_blockgrant_pk    INDEX     }   CREATE UNIQUE INDEX bangunan_dari_blockgrant_pk ON public.bangunan_dari_blockgrant USING btree (blockgrant_id, id_bangunan);
 /   DROP INDEX public.bangunan_dari_blockgrant_pk;
       public            postgres    false    378    378                       1259    268859    bangunan_ditempati_oleh_fk    INDEX     Q   CREATE INDEX bangunan_ditempati_oleh_fk ON public.bangunan USING btree (ptk_id);
 .   DROP INDEX public.bangunan_ditempati_oleh_fk;
       public            postgres    false    377                       1259    268868    bangunan_long_sem_fk    INDEX     ]   CREATE INDEX bangunan_long_sem_fk ON public.bangunan_longitudinal USING btree (semester_id);
 (   DROP INDEX public.bangunan_long_sem_fk;
       public            postgres    false    379                       1259    268869    bangunan_longitudinal_pk    INDEX     u   CREATE UNIQUE INDEX bangunan_longitudinal_pk ON public.bangunan_longitudinal USING btree (id_bangunan, semester_id);
 ,   DROP INDEX public.bangunan_longitudinal_pk;
       public            postgres    false    379    379                       1259    268860    bangunan_pk    INDEX     N   CREATE UNIQUE INDEX bangunan_pk ON public.bangunan USING btree (id_bangunan);
    DROP INDEX public.bangunan_pk;
       public            postgres    false    377                       1259    268870    bantuan_pd_angg_rombel_fk    INDEX     ]   CREATE INDEX bantuan_pd_angg_rombel_fk ON public.bantuan_pd USING btree (anggota_rombel_id);
 -   DROP INDEX public.bantuan_pd_angg_rombel_fk;
       public            postgres    false    380                       1259    268871    bantuan_pd_jenis_fk    INDEX     V   CREATE INDEX bantuan_pd_jenis_fk ON public.bantuan_pd USING btree (jenis_bantuan_id);
 '   DROP INDEX public.bantuan_pd_jenis_fk;
       public            postgres    false    380                       1259    268872    bantuan_pd_pk    INDEX     T   CREATE UNIQUE INDEX bantuan_pd_pk ON public.bantuan_pd USING btree (id_bantuan_pd);
 !   DROP INDEX public.bantuan_pd_pk;
       public            postgres    false    380            �           1259    268819    barang_dipakai_oleh_fk    INDEX     I   CREATE INDEX barang_dipakai_oleh_fk ON public.alat USING btree (ptk_id);
 *   DROP INDEX public.barang_dipakai_oleh_fk;
       public            postgres    false    367                       1259    268873 	   bea_pd_ls    INDEX     Q   CREATE INDEX bea_pd_ls ON public.beasiswa_peserta_didik USING btree (last_sync);
    DROP INDEX public.bea_pd_ls;
       public            postgres    false    381                       1259    268874 	   bea_pd_lu    INDEX     S   CREATE INDEX bea_pd_lu ON public.beasiswa_peserta_didik USING btree (last_update);
    DROP INDEX public.bea_pd_lu;
       public            postgres    false    381                        1259    268875    beasiswa_pd_beasiswa_fk    INDEX     g   CREATE INDEX beasiswa_pd_beasiswa_fk ON public.beasiswa_peserta_didik USING btree (jenis_beasiswa_id);
 +   DROP INDEX public.beasiswa_pd_beasiswa_fk;
       public            postgres    false    381            !           1259    268876    beasiswa_pd_fk    INDEX     ]   CREATE INDEX beasiswa_pd_fk ON public.beasiswa_peserta_didik USING btree (peserta_didik_id);
 "   DROP INDEX public.beasiswa_pd_fk;
       public            postgres    false    381            "           1259    268877    beasiswa_pd_mulai_fk    INDEX     ^   CREATE INDEX beasiswa_pd_mulai_fk ON public.beasiswa_peserta_didik USING btree (tahun_mulai);
 (   DROP INDEX public.beasiswa_pd_mulai_fk;
       public            postgres    false    381            #           1259    268878    beasiswa_pd_selesai_fk    INDEX     b   CREATE INDEX beasiswa_pd_selesai_fk ON public.beasiswa_peserta_didik USING btree (tahun_selesai);
 *   DROP INDEX public.beasiswa_pd_selesai_fk;
       public            postgres    false    381            $           1259    268879    beasiswa_peserta_didik_pk    INDEX     x   CREATE UNIQUE INDEX beasiswa_peserta_didik_pk ON public.beasiswa_peserta_didik USING btree (beasiswa_peserta_didik_id);
 -   DROP INDEX public.beasiswa_peserta_didik_pk;
       public            postgres    false    381            %           1259    268880    beasiswa_ptk_jenis_fk    INDEX     [   CREATE INDEX beasiswa_ptk_jenis_fk ON public.beasiswa_ptk USING btree (jenis_beasiswa_id);
 )   DROP INDEX public.beasiswa_ptk_jenis_fk;
       public            postgres    false    382            &           1259    268881    beasiswa_ptk_pk    INDEX     Z   CREATE UNIQUE INDEX beasiswa_ptk_pk ON public.beasiswa_ptk USING btree (beasiswa_ptk_id);
 #   DROP INDEX public.beasiswa_ptk_pk;
       public            postgres    false    382            '           1259    268882    beasiswa_ptk_ptk_fk    INDEX     N   CREATE INDEX beasiswa_ptk_ptk_fk ON public.beasiswa_ptk USING btree (ptk_id);
 '   DROP INDEX public.beasiswa_ptk_ptk_fk;
       public            postgres    false    382            (           1259    268883    bidang_sdm_pk    INDEX     f   CREATE UNIQUE INDEX bidang_sdm_pk ON public.bidang_sdm USING btree (ptk_id, bidang_studi_id, urutan);
 !   DROP INDEX public.bidang_sdm_pk;
       public            postgres    false    383    383    383            +           1259    268886    bimbing_pd_pk    INDEX     Q   CREATE UNIQUE INDEX bimbing_pd_pk ON public.bimbing_pd USING btree (id_bimb_pd);
 !   DROP INDEX public.bimbing_pd_pk;
       public            postgres    false    384            ,           1259    268887    bimbing_pd_ptk_fk    INDEX     J   CREATE INDEX bimbing_pd_ptk_fk ON public.bimbing_pd USING btree (ptk_id);
 %   DROP INDEX public.bimbing_pd_ptk_fk;
       public            postgres    false    384            -           1259    268888    block_jenis_bantuan_fk    INDEX     Y   CREATE INDEX block_jenis_bantuan_fk ON public.blockgrant USING btree (jenis_bantuan_id);
 *   DROP INDEX public.block_jenis_bantuan_fk;
       public            postgres    false    385            .           1259    268889    block_sumber_fk    INDEX     P   CREATE INDEX block_sumber_fk ON public.blockgrant USING btree (sumber_dana_id);
 #   DROP INDEX public.block_sumber_fk;
       public            postgres    false    385            /           1259    268890    blockgrant_pk    INDEX     T   CREATE UNIQUE INDEX blockgrant_pk ON public.blockgrant USING btree (blockgrant_id);
 !   DROP INDEX public.blockgrant_pk;
       public            postgres    false    385            0           1259    268891    blockgrant_sekolah_fk    INDEX     R   CREATE INDEX blockgrant_sekolah_fk ON public.blockgrant USING btree (sekolah_id);
 )   DROP INDEX public.blockgrant_sekolah_fk;
       public            postgres    false    385            8           1259    268899    buku_alat_longitudinal_pk    INDEX     n   CREATE UNIQUE INDEX buku_alat_longitudinal_pk ON public.buku_longitudinal USING btree (id_buku, semester_id);
 -   DROP INDEX public.buku_alat_longitudinal_pk;
       public            postgres    false    387    387            1           1259    268892    buku_alat_mata_pelajaran_fk    INDEX     Y   CREATE INDEX buku_alat_mata_pelajaran_fk ON public.buku USING btree (mata_pelajaran_id);
 /   DROP INDEX public.buku_alat_mata_pelajaran_fk;
       public            postgres    false    386            2           1259    268893    buku_alat_pk    INDEX     G   CREATE UNIQUE INDEX buku_alat_pk ON public.buku USING btree (id_buku);
     DROP INDEX public.buku_alat_pk;
       public            postgres    false    386            9           1259    268900    buku_alat_sem_fk    INDEX     U   CREATE INDEX buku_alat_sem_fk ON public.buku_longitudinal USING btree (semester_id);
 $   DROP INDEX public.buku_alat_sem_fk;
       public            postgres    false    387            3           1259    268894    buku_biblio_fk    INDEX     D   CREATE INDEX buku_biblio_fk ON public.buku USING btree (id_biblio);
 "   DROP INDEX public.buku_biblio_fk;
       public            postgres    false    386            :           1259    268901    buku_pelajaran_pk    INDEX     i   CREATE UNIQUE INDEX buku_pelajaran_pk ON public.buku_pelajaran USING btree (id_biblio, pembelajaran_id);
 %   DROP INDEX public.buku_pelajaran_pk;
       public            postgres    false    388    388            <           1259    268903    buku_ptk_fk    INDEX     B   CREATE INDEX buku_ptk_fk ON public.buku_ptk USING btree (ptk_id);
    DROP INDEX public.buku_ptk_fk;
       public            postgres    false    389            =           1259    268904    buku_ptk_pk    INDEX     J   CREATE UNIQUE INDEX buku_ptk_pk ON public.buku_ptk USING btree (buku_id);
    DROP INDEX public.buku_ptk_pk;
       public            postgres    false    389            4           1259    268895    buku_sekolah_fk    INDEX     F   CREATE INDEX buku_sekolah_fk ON public.buku USING btree (sekolah_id);
 #   DROP INDEX public.buku_sekolah_fk;
       public            postgres    false    386            5           1259    268896    buku_tingkat_fk    INDEX     Q   CREATE INDEX buku_tingkat_fk ON public.buku USING btree (tingkat_pendidikan_id);
 #   DROP INDEX public.buku_tingkat_fk;
       public            postgres    false    386            ;           1259    268902    bupel_pembelajaran_fk    INDEX     [   CREATE INDEX bupel_pembelajaran_fk ON public.buku_pelajaran USING btree (pembelajaran_id);
 )   DROP INDEX public.bupel_pembelajaran_fk;
       public            postgres    false    388            �           1259    268820    daftar_barang_ruang_fk    INDEX     K   CREATE INDEX daftar_barang_ruang_fk ON public.alat USING btree (id_ruang);
 *   DROP INDEX public.daftar_barang_ruang_fk;
       public            postgres    false    367            >           1259    268905    demografi_ls    INDEX     G   CREATE INDEX demografi_ls ON public.demografi USING btree (last_sync);
     DROP INDEX public.demografi_ls;
       public            postgres    false    390            ?           1259    268906    demografi_lu    INDEX     I   CREATE INDEX demografi_lu ON public.demografi USING btree (last_update);
     DROP INDEX public.demografi_lu;
       public            postgres    false    390            @           1259    268907    demografi_periode_fk    INDEX     U   CREATE INDEX demografi_periode_fk ON public.demografi USING btree (tahun_ajaran_id);
 (   DROP INDEX public.demografi_periode_fk;
       public            postgres    false    390            A           1259    268908    demografi_pk    INDEX     Q   CREATE UNIQUE INDEX demografi_pk ON public.demografi USING btree (demografi_id);
     DROP INDEX public.demografi_pk;
       public            postgres    false    390            B           1259    268909    demografi_wilayah_fk    INDEX     R   CREATE INDEX demografi_wilayah_fk ON public.demografi USING btree (kode_wilayah);
 (   DROP INDEX public.demografi_wilayah_fk;
       public            postgres    false    390            C           1259    268910    diklat_jenis_fk    INDEX     M   CREATE INDEX diklat_jenis_fk ON public.diklat USING btree (jenis_diklat_id);
 #   DROP INDEX public.diklat_jenis_fk;
       public            postgres    false    391            D           1259    268911 	   diklat_pk    INDEX     H   CREATE UNIQUE INDEX diklat_pk ON public.diklat USING btree (diklat_id);
    DROP INDEX public.diklat_pk;
       public            postgres    false    391            E           1259    268912    diklat_ptk_fk    INDEX     B   CREATE INDEX diklat_ptk_fk ON public.diklat USING btree (ptk_id);
 !   DROP INDEX public.diklat_ptk_fk;
       public            postgres    false    391            F           1259    268913    dudi_bidang_usaha_fk    INDEX     P   CREATE INDEX dudi_bidang_usaha_fk ON public.dudi USING btree (bidang_usaha_id);
 (   DROP INDEX public.dudi_bidang_usaha_fk;
       public            postgres    false    392            G           1259    268914    dudi_pk    INDEX     B   CREATE UNIQUE INDEX dudi_pk ON public.dudi USING btree (dudi_id);
    DROP INDEX public.dudi_pk;
       public            postgres    false    392            z           1259    268965    ekskul_rombel_fk    INDEX     Y   CREATE INDEX ekskul_rombel_fk ON public.kelas_ekskul USING btree (rombongan_belajar_id);
 $   DROP INDEX public.ekskul_rombel_fk;
       public            postgres    false    403            �           1259    269282    err_type_log_fk    INDEX     I   CREATE INDEX err_type_log_fk ON public.vld_sekolah USING btree (idtype);
 #   DROP INDEX public.err_type_log_fk;
       public            postgres    false    489            �           1259    269240    err_type_log_fk10    INDEX     O   CREATE INDEX err_type_log_fk10 ON public.vld_karya_tulis USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk10;
       public            postgres    false    468            �           1259    269256    err_type_log_fk11    INDEX     O   CREATE INDEX err_type_log_fk11 ON public.vld_penghargaan USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk11;
       public            postgres    false    476            �           1259    269248    err_type_log_fk12    INDEX     N   CREATE INDEX err_type_log_fk12 ON public.vld_nilai_test USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk12;
       public            postgres    false    472            v           1259    269219    err_type_log_fk13    INDEX     H   CREATE INDEX err_type_log_fk13 ON public.vld_anak USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk13;
       public            postgres    false    458            �           1259    269287    err_type_log_fk14    INDEX     R   CREATE INDEX err_type_log_fk14 ON public.vld_tugas_tambahan USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk14;
       public            postgres    false    491            �           1259    269278    err_type_log_fk15    INDEX     S   CREATE INDEX err_type_log_fk15 ON public.vld_rwy_sertifikasi USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk15;
       public            postgres    false    487            �           1259    269272    err_type_log_fk16    INDEX     S   CREATE INDEX err_type_log_fk16 ON public.vld_rwy_kepangkatan USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk16;
       public            postgres    false    484            �           1259    269276    err_type_log_fk17    INDEX     S   CREATE INDEX err_type_log_fk17 ON public.vld_rwy_pend_formal USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk17;
       public            postgres    false    486            �           1259    269280    err_type_log_fk18    INDEX     R   CREATE INDEX err_type_log_fk18 ON public.vld_rwy_struktural USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk18;
       public            postgres    false    488            �           1259    269270    err_type_log_fk19    INDEX     R   CREATE INDEX err_type_log_fk19 ON public.vld_rwy_fungsional USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk19;
       public            postgres    false    483            �           1259    269262    err_type_log_fk2    INDEX     F   CREATE INDEX err_type_log_fk2 ON public.vld_ptk USING btree (idtype);
 $   DROP INDEX public.err_type_log_fk2;
       public            postgres    false    479            �           1259    269268    err_type_log_fk20    INDEX     J   CREATE INDEX err_type_log_fk20 ON public.vld_rombel USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk20;
       public            postgres    false    482            �           1259    269252    err_type_log_fk21    INDEX     K   CREATE INDEX err_type_log_fk21 ON public.vld_pd_long USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk21;
       public            postgres    false    474            }           1259    269226    err_type_log_fk22    INDEX     J   CREATE INDEX err_type_log_fk22 ON public.vld_bea_pd USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk22;
       public            postgres    false    461            �           1259    269260    err_type_log_fk23    INDEX     L   CREATE INDEX err_type_log_fk23 ON public.vld_prestasi USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk23;
       public            postgres    false    478            �           1259    269236    err_type_log_fk24    INDEX     M   CREATE INDEX err_type_log_fk24 ON public.vld_inpassing USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk24;
       public            postgres    false    466            �           1259    269232    err_type_log_fk25    INDEX     M   CREATE INDEX err_type_log_fk25 ON public.vld_demografi USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk25;
       public            postgres    false    464            �           1259    269250    err_type_log_fk26    INDEX     N   CREATE INDEX err_type_log_fk26 ON public.vld_nonsekolah USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk26;
       public            postgres    false    473            �           1259    269258    err_type_log_fk3    INDEX     P   CREATE INDEX err_type_log_fk3 ON public.vld_peserta_didik USING btree (idtype);
 $   DROP INDEX public.err_type_log_fk3;
       public            postgres    false    477            �           1259    269246    err_type_log_fk31    INDEX     O   CREATE INDEX err_type_log_fk31 ON public.vld_nilai_rapor USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk31;
       public            postgres    false    471            �           1259    269234    err_type_log_fk33    INDEX     H   CREATE INDEX err_type_log_fk33 ON public.vld_dudi USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk33;
       public            postgres    false    465            q           1259    269214    err_type_log_fk37    INDEX     J   CREATE INDEX err_type_log_fk37 ON public.vld_akt_pd USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk37;
       public            postgres    false    456            �           1259    269284    err_type_log_fk38    INDEX     I   CREATE INDEX err_type_log_fk38 ON public.vld_tanah USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk38;
       public            postgres    false    490            x           1259    269221    err_type_log_fk39    INDEX     L   CREATE INDEX err_type_log_fk39 ON public.vld_angkutan USING btree (idtype);
 %   DROP INDEX public.err_type_log_fk39;
       public            postgres    false    459            t           1259    269217    err_type_log_fk4    INDEX     G   CREATE INDEX err_type_log_fk4 ON public.vld_alat USING btree (idtype);
 $   DROP INDEX public.err_type_log_fk4;
       public            postgres    false    457            {           1259    269224    err_type_log_fk5    INDEX     K   CREATE INDEX err_type_log_fk5 ON public.vld_bangunan USING btree (idtype);
 $   DROP INDEX public.err_type_log_fk5;
       public            postgres    false    460                       1259    269228    err_type_log_fk6    INDEX     J   CREATE INDEX err_type_log_fk6 ON public.vld_bea_ptk USING btree (idtype);
 $   DROP INDEX public.err_type_log_fk6;
       public            postgres    false    462            �           1259    269242    err_type_log_fk7    INDEX     P   CREATE INDEX err_type_log_fk7 ON public.vld_kesejahteraan USING btree (idtype);
 $   DROP INDEX public.err_type_log_fk7;
       public            postgres    false    469            �           1259    269230    err_type_log_fk9    INDEX     K   CREATE INDEX err_type_log_fk9 ON public.vld_buku_ptk USING btree (idtype);
 $   DROP INDEX public.err_type_log_fk9;
       public            postgres    false    463            H           1259    268915    gugus_jenis_fk    INDEX     R   CREATE INDEX gugus_jenis_fk ON public.gugus_sekolah USING btree (jenis_gugus_id);
 "   DROP INDEX public.gugus_jenis_fk;
       public            postgres    false    393            I           1259    268916    gugus_sekolah_pk    INDEX     U   CREATE UNIQUE INDEX gugus_sekolah_pk ON public.gugus_sekolah USING btree (gugus_id);
 $   DROP INDEX public.gugus_sekolah_pk;
       public            postgres    false    393            �           1259    269061    guru_bidangstudi_fk    INDEX     W   CREATE INDEX guru_bidangstudi_fk ON public.ptk USING btree (pengawas_bidang_studi_id);
 '   DROP INDEX public.guru_bidangstudi_fk;
       public            postgres    false    423            K           1259    268918    guru_sasaran_pengawas_pk    INDEX     �   CREATE UNIQUE INDEX guru_sasaran_pengawas_pk ON public.guru_sasaran_pengawas USING btree (pengawas_terdaftar_id, ptk_terdaftar_id);
 ,   DROP INDEX public.guru_sasaran_pengawas_pk;
       public            postgres    false    394    394            6           1259    268897    hapus_buku_alat_fk    INDEX     L   CREATE INDEX hapus_buku_alat_fk ON public.buku USING btree (id_hapus_buku);
 &   DROP INDEX public.hapus_buku_alat_fk;
       public            postgres    false    386            N           1259    269179    hapus_prasarana_fk    INDEX     M   CREATE INDEX hapus_prasarana_fk ON public.tanah USING btree (id_hapus_buku);
 &   DROP INDEX public.hapus_prasarana_fk;
       public            postgres    false    446                       1259    268861    hapus_prasarana_fk2    INDEX     Q   CREATE INDEX hapus_prasarana_fk2 ON public.bangunan USING btree (id_hapus_buku);
 '   DROP INDEX public.hapus_prasarana_fk2;
       public            postgres    false    377            
           1259    268853    hapus_sarana_fk    INDEX     M   CREATE INDEX hapus_sarana_fk ON public.angkutan USING btree (id_hapus_buku);
 #   DROP INDEX public.hapus_sarana_fk;
       public            postgres    false    375            �           1259    268821    hapus_sarana_fk2    INDEX     J   CREATE INDEX hapus_sarana_fk2 ON public.alat USING btree (id_hapus_buku);
 $   DROP INDEX public.hapus_sarana_fk2;
       public            postgres    false    367            �           1259    269022 	   ibu_kk_fk    INDEX     V   CREATE INDEX ibu_kk_fk ON public.peserta_didik USING btree (kebutuhan_khusus_id_ibu);
    DROP INDEX public.ibu_kk_fk;
       public            postgres    false    418            �           1259    269000    induk_pembejalaran_fk    INDEX     _   CREATE INDEX induk_pembejalaran_fk ON public.pembelajaran USING btree (induk_pembelajaran_id);
 )   DROP INDEX public.induk_pembejalaran_fk;
       public            postgres    false    415            �           1259    269058    inklusi_sp_fk    INDEX     O   CREATE INDEX inklusi_sp_fk ON public.program_inklusi USING btree (sekolah_id);
 !   DROP INDEX public.inklusi_sp_fk;
       public            postgres    false    422            M           1259    268920    inpassing_pk    INDEX     Q   CREATE UNIQUE INDEX inpassing_pk ON public.inpassing USING btree (inpassing_id);
     DROP INDEX public.inpassing_pk;
       public            postgres    false    395            N           1259    268921    inpassing_ptk_fk    INDEX     H   CREATE INDEX inpassing_ptk_fk ON public.inpassing USING btree (ptk_id);
 $   DROP INDEX public.inpassing_ptk_fk;
       public            postgres    false    395            O           1259    268922    inpassing_setara_fk    INDEX     X   CREATE INDEX inpassing_setara_fk ON public.inpassing USING btree (pangkat_golongan_id);
 '   DROP INDEX public.inpassing_setara_fk;
       public            postgres    false    395            P           1259    268923    instalasi_pk    INDEX     Q   CREATE UNIQUE INDEX instalasi_pk ON public.instalasi USING btree (id_instalasi);
     DROP INDEX public.instalasi_pk;
       public            postgres    false    396            Q           1259    268924    instalasi_sp_fk    INDEX     K   CREATE INDEX instalasi_sp_fk ON public.instalasi USING btree (sekolah_id);
 #   DROP INDEX public.instalasi_sp_fk;
       public            postgres    false    396            R           1259    268925    instalasi_wilayah_fk    INDEX     R   CREATE INDEX instalasi_wilayah_fk ON public.instalasi USING btree (kode_wilayah);
 (   DROP INDEX public.instalasi_wilayah_fk;
       public            postgres    false    396            S           1259    268926    izin_operasional_pk    INDEX     f   CREATE UNIQUE INDEX izin_operasional_pk ON public.izin_operasional USING btree (id_izin_operasional);
 '   DROP INDEX public.izin_operasional_pk;
       public            postgres    false    397            T           1259    268927    izin_sekolah_fk    INDEX     R   CREATE INDEX izin_sekolah_fk ON public.izin_operasional USING btree (sekolah_id);
 #   DROP INDEX public.izin_sekolah_fk;
       public            postgres    false    397                       1259    269118    jab_fung_ptk_fk    INDEX     L   CREATE INDEX jab_fung_ptk_fk ON public.rwy_fungsional USING btree (ptk_id);
 #   DROP INDEX public.jab_fung_ptk_fk;
       public            postgres    false    431            *           1259    269142    jab_stru_ptk_fk    INDEX     L   CREATE INDEX jab_stru_ptk_fk ON public.rwy_struktural USING btree (ptk_id);
 #   DROP INDEX public.jab_stru_ptk_fk;
       public            postgres    false    436            V           1259    268929 	   jadwal_pk    INDEX     f   CREATE UNIQUE INDEX jadwal_pk ON public.jadwal USING btree (sekolah_id, semester_id, id_ruang, hari);
    DROP INDEX public.jadwal_pk;
       public            postgres    false    398    398    398    398            W           1259    268930    jadwal_ruang_fk    INDEX     F   CREATE INDEX jadwal_ruang_fk ON public.jadwal USING btree (id_ruang);
 #   DROP INDEX public.jadwal_ruang_fk;
       public            postgres    false    398            X           1259    268931    jam01_fk    INDEX     @   CREATE INDEX jam01_fk ON public.jadwal USING btree (bel_ke_01);
    DROP INDEX public.jam01_fk;
       public            postgres    false    398            Y           1259    268932    jam02_fk    INDEX     @   CREATE INDEX jam02_fk ON public.jadwal USING btree (bel_ke_02);
    DROP INDEX public.jam02_fk;
       public            postgres    false    398            Z           1259    268933    jam03_fk    INDEX     @   CREATE INDEX jam03_fk ON public.jadwal USING btree (bel_ke_03);
    DROP INDEX public.jam03_fk;
       public            postgres    false    398            [           1259    268934    jam04_fk    INDEX     @   CREATE INDEX jam04_fk ON public.jadwal USING btree (bel_ke_04);
    DROP INDEX public.jam04_fk;
       public            postgres    false    398            \           1259    268935    jam05_fk    INDEX     @   CREATE INDEX jam05_fk ON public.jadwal USING btree (bel_ke_05);
    DROP INDEX public.jam05_fk;
       public            postgres    false    398            ]           1259    268936    jam06_fk    INDEX     @   CREATE INDEX jam06_fk ON public.jadwal USING btree (bel_ke_06);
    DROP INDEX public.jam06_fk;
       public            postgres    false    398            ^           1259    268937    jam07_fk    INDEX     @   CREATE INDEX jam07_fk ON public.jadwal USING btree (bel_ke_07);
    DROP INDEX public.jam07_fk;
       public            postgres    false    398            _           1259    268938    jam08_fk    INDEX     @   CREATE INDEX jam08_fk ON public.jadwal USING btree (bel_ke_08);
    DROP INDEX public.jam08_fk;
       public            postgres    false    398            `           1259    268939    jam09_fk    INDEX     @   CREATE INDEX jam09_fk ON public.jadwal USING btree (bel_ke_09);
    DROP INDEX public.jam09_fk;
       public            postgres    false    398            a           1259    268940    jam10_fk    INDEX     @   CREATE INDEX jam10_fk ON public.jadwal USING btree (bel_ke_10);
    DROP INDEX public.jam10_fk;
       public            postgres    false    398            b           1259    268941    jam11_fk    INDEX     @   CREATE INDEX jam11_fk ON public.jadwal USING btree (bel_ke_11);
    DROP INDEX public.jam11_fk;
       public            postgres    false    398            c           1259    268942    jam12_fk    INDEX     @   CREATE INDEX jam12_fk ON public.jadwal USING btree (bel_ke_12);
    DROP INDEX public.jam12_fk;
       public            postgres    false    398            d           1259    268943    jam13_fk    INDEX     @   CREATE INDEX jam13_fk ON public.jadwal USING btree (bel_ke_13);
    DROP INDEX public.jam13_fk;
       public            postgres    false    398            e           1259    268944    jam14_fk    INDEX     @   CREATE INDEX jam14_fk ON public.jadwal USING btree (bel_ke_14);
    DROP INDEX public.jam14_fk;
       public            postgres    false    398            f           1259    268945    jam15_fk    INDEX     @   CREATE INDEX jam15_fk ON public.jadwal USING btree (bel_ke_15);
    DROP INDEX public.jam15_fk;
       public            postgres    false    398            g           1259    268946    jam16_fk    INDEX     @   CREATE INDEX jam16_fk ON public.jadwal USING btree (bel_ke_16);
    DROP INDEX public.jam16_fk;
       public            postgres    false    398            h           1259    268947    jam17_fk    INDEX     @   CREATE INDEX jam17_fk ON public.jadwal USING btree (bel_ke_17);
    DROP INDEX public.jam17_fk;
       public            postgres    false    398            i           1259    268948    jam18_fk    INDEX     @   CREATE INDEX jam18_fk ON public.jadwal USING btree (bel_ke_18);
    DROP INDEX public.jam18_fk;
       public            postgres    false    398            j           1259    268949    jam19_fk    INDEX     @   CREATE INDEX jam19_fk ON public.jadwal USING btree (bel_ke_19);
    DROP INDEX public.jam19_fk;
       public            postgres    false    398            k           1259    268950    jam20_fk    INDEX     @   CREATE INDEX jam20_fk ON public.jadwal USING btree (bel_ke_20);
    DROP INDEX public.jam20_fk;
       public            postgres    false    398            }           1259    268968    jenis_panitia_fk    INDEX     R   CREATE INDEX jenis_panitia_fk ON public.kepanitiaan USING btree (id_jns_panitia);
 $   DROP INDEX public.jenis_panitia_fk;
       public            postgres    false    404            �           1259    268813    jns_akt_pd_fk    INDEX     I   CREATE INDEX jns_akt_pd_fk ON public.akt_pd USING btree (id_jns_akt_pd);
 !   DROP INDEX public.jns_akt_pd_fk;
       public            postgres    false    365            r           1259    268957    jur_sekolah_fk    INDEX     K   CREATE INDEX jur_sekolah_fk ON public.jurusan_sp USING btree (sekolah_id);
 "   DROP INDEX public.jur_sekolah_fk;
       public            postgres    false    401            l           1259    268951    jur_sp_long_pk    INDEX     c   CREATE UNIQUE INDEX jur_sp_long_pk ON public.jur_sp_long USING btree (jurusan_sp_id, semester_id);
 "   DROP INDEX public.jur_sp_long_pk;
       public            postgres    false    399    399            n           1259    268953    jurks_ls    INDEX     K   CREATE INDEX jurks_ls ON public.jurusan_kerjasama USING btree (last_sync);
    DROP INDEX public.jurks_ls;
       public            postgres    false    400            o           1259    268954    jurks_lu    INDEX     M   CREATE INDEX jurks_lu ON public.jurusan_kerjasama USING btree (last_update);
    DROP INDEX public.jurks_lu;
       public            postgres    false    400            s           1259    268958    jursek_jur_fk    INDEX     J   CREATE INDEX jursek_jur_fk ON public.jurusan_sp USING btree (jurusan_id);
 !   DROP INDEX public.jursek_jur_fk;
       public            postgres    false    401            t           1259    268959    jursp_kk_fk    INDEX     Q   CREATE INDEX jursp_kk_fk ON public.jurusan_sp USING btree (kebutuhan_khusus_id);
    DROP INDEX public.jursp_kk_fk;
       public            postgres    false    401            m           1259    268952    jursp_long_sem_fk    INDEX     P   CREATE INDEX jursp_long_sem_fk ON public.jur_sp_long USING btree (semester_id);
 %   DROP INDEX public.jursp_long_sem_fk;
       public            postgres    false    399            u           1259    268960    jursp_ls    INDEX     D   CREATE INDEX jursp_ls ON public.jurusan_sp USING btree (last_sync);
    DROP INDEX public.jursp_ls;
       public            postgres    false    401            v           1259    268961    jursp_lu    INDEX     F   CREATE INDEX jursp_lu ON public.jurusan_sp USING btree (last_update);
    DROP INDEX public.jursp_lu;
       public            postgres    false    401            p           1259    268955    jurusan_kerjasama_pk    INDEX     j   CREATE UNIQUE INDEX jurusan_kerjasama_pk ON public.jurusan_kerjasama USING btree (mou_id, jurusan_sp_id);
 (   DROP INDEX public.jurusan_kerjasama_pk;
       public            postgres    false    400    400            w           1259    268962    jurusan_sp_pk    INDEX     T   CREATE UNIQUE INDEX jurusan_sp_pk ON public.jurusan_sp USING btree (jurusan_sp_id);
 !   DROP INDEX public.jurusan_sp_pk;
       public            postgres    false    401            x           1259    268963    karya_tulis_pk    INDEX     W   CREATE UNIQUE INDEX karya_tulis_pk ON public.karya_tulis USING btree (karya_tulis_id);
 "   DROP INDEX public.karya_tulis_pk;
       public            postgres    false    402            y           1259    268964    karya_tulis_ptk_fk    INDEX     L   CREATE INDEX karya_tulis_ptk_fk ON public.karya_tulis USING btree (ptk_id);
 &   DROP INDEX public.karya_tulis_ptk_fk;
       public            postgres    false    402            {           1259    268966    kelas_ekskul__fk    INDEX     N   CREATE INDEX kelas_ekskul__fk ON public.kelas_ekskul USING btree (id_ekskul);
 $   DROP INDEX public.kelas_ekskul__fk;
       public            postgres    false    403            |           1259    268967    kelas_ekskul_pk    INDEX     Z   CREATE UNIQUE INDEX kelas_ekskul_pk ON public.kelas_ekskul USING btree (id_kelas_ekskul);
 #   DROP INDEX public.kelas_ekskul_pk;
       public            postgres    false    403            ~           1259    268969    kepanitiaan_pk    INDEX     S   CREATE UNIQUE INDEX kepanitiaan_pk ON public.kepanitiaan USING btree (id_panitia);
 "   DROP INDEX public.kepanitiaan_pk;
       public            postgres    false    404                       1259    268970    kepanitiaan_sp_fk    INDEX     O   CREATE INDEX kepanitiaan_sp_fk ON public.kepanitiaan USING btree (sekolah_id);
 %   DROP INDEX public.kepanitiaan_sp_fk;
       public            postgres    false    404                       1259    269124    kerja_jenis_pengangkat_fk    INDEX     [   CREATE INDEX kerja_jenis_pengangkat_fk ON public.rwy_kerja USING btree (jenis_lembaga_id);
 -   DROP INDEX public.kerja_jenis_pengangkat_fk;
       public            postgres    false    433                       1259    269125    kerja_jenis_ptk_fk    INDEX     P   CREATE INDEX kerja_jenis_ptk_fk ON public.rwy_kerja USING btree (jenis_ptk_id);
 &   DROP INDEX public.kerja_jenis_ptk_fk;
       public            postgres    false    433                       1259    269126    kerja_ptk_fk    INDEX     D   CREATE INDEX kerja_ptk_fk ON public.rwy_kerja USING btree (ptk_id);
     DROP INDEX public.kerja_ptk_fk;
       public            postgres    false    433                       1259    269127    kerja_status_peg_fk    INDEX     Z   CREATE INDEX kerja_status_peg_fk ON public.rwy_kerja USING btree (status_kepegawaian_id);
 '   DROP INDEX public.kerja_status_peg_fk;
       public            postgres    false    433            q           1259    268956    kerjasama_jurusan_fk    INDEX     [   CREATE INDEX kerjasama_jurusan_fk ON public.jurusan_kerjasama USING btree (jurusan_sp_id);
 (   DROP INDEX public.kerjasama_jurusan_fk;
       public            postgres    false    400            k           1259    269208    kerjasama_unit_usaha_fk    INDEX     a   CREATE INDEX kerjasama_unit_usaha_fk ON public.unit_usaha_kerjasama USING btree (unit_usaha_id);
 +   DROP INDEX public.kerjasama_unit_usaha_fk;
       public            postgres    false    453            �           1259    268971    kesejahteraan_jenis_fk    INDEX     b   CREATE INDEX kesejahteraan_jenis_fk ON public.kesejahteraan USING btree (jenis_kesejahteraan_id);
 *   DROP INDEX public.kesejahteraan_jenis_fk;
       public            postgres    false    405            �           1259    268974    kesejahteraan_pd_jenis_fk    INDEX     h   CREATE INDEX kesejahteraan_pd_jenis_fk ON public.kesejahteraan_pd USING btree (jenis_kesejahteraan_id);
 -   DROP INDEX public.kesejahteraan_pd_jenis_fk;
       public            postgres    false    406            �           1259    268975    kesejahteraan_pd_pk    INDEX     b   CREATE UNIQUE INDEX kesejahteraan_pd_pk ON public.kesejahteraan_pd USING btree (id_sejahtera_pd);
 '   DROP INDEX public.kesejahteraan_pd_pk;
       public            postgres    false    406            �           1259    268972    kesejahteraan_pk    INDEX     ]   CREATE UNIQUE INDEX kesejahteraan_pk ON public.kesejahteraan USING btree (kesejahteraan_id);
 $   DROP INDEX public.kesejahteraan_pk;
       public            postgres    false    405            �           1259    268973    kesejahteraan_ptk_fk    INDEX     P   CREATE INDEX kesejahteraan_ptk_fk ON public.kesejahteraan USING btree (ptk_id);
 (   DROP INDEX public.kesejahteraan_ptk_fk;
       public            postgres    false    405            �           1259    269023    kewarganegaraan_pd_fk    INDEX     Z   CREATE INDEX kewarganegaraan_pd_fk ON public.peserta_didik USING btree (kewarganegaraan);
 )   DROP INDEX public.kewarganegaraan_pd_fk;
       public            postgres    false    418            �           1259    269062    kewarganegaraan_ptk_fk    INDEX     Q   CREATE INDEX kewarganegaraan_ptk_fk ON public.ptk USING btree (kewarganegaraan);
 *   DROP INDEX public.kewarganegaraan_ptk_fk;
       public            postgres    false    423            �           1259    268977    kitas_pd_fk    INDEX     L   CREATE INDEX kitas_pd_fk ON public.kitas_pd USING btree (peserta_didik_id);
    DROP INDEX public.kitas_pd_fk;
       public            postgres    false    407            �           1259    268978    kitas_pd_pk    INDEX     K   CREATE UNIQUE INDEX kitas_pd_pk ON public.kitas_pd USING btree (no_kitas);
    DROP INDEX public.kitas_pd_pk;
       public            postgres    false    407            �           1259    268979    kitas_ptk_fk    INDEX     D   CREATE INDEX kitas_ptk_fk ON public.kitas_ptk USING btree (ptk_id);
     DROP INDEX public.kitas_ptk_fk;
       public            postgres    false    408            �           1259    268980    kitas_ptk_pk    INDEX     M   CREATE UNIQUE INDEX kitas_ptk_pk ON public.kitas_ptk USING btree (no_kitas);
     DROP INDEX public.kitas_ptk_pk;
       public            postgres    false    408            �           1259    268981    layanan_khusus_pk    INDEX     T   CREATE UNIQUE INDEX layanan_khusus_pk ON public.layanan_khusus USING btree (id_lk);
 %   DROP INDEX public.layanan_khusus_pk;
       public            postgres    false    409            �           1259    268985    lembaga_jenis_fk    INDEX     \   CREATE INDEX lembaga_jenis_fk ON public.lembaga_non_sekolah USING btree (jenis_lembaga_id);
 $   DROP INDEX public.lembaga_jenis_fk;
       public            postgres    false    410            �           1259    268986    lembaga_non_sekolah_pk    INDEX     c   CREATE UNIQUE INDEX lembaga_non_sekolah_pk ON public.lembaga_non_sekolah USING btree (lembaga_id);
 *   DROP INDEX public.lembaga_non_sekolah_pk;
       public            postgres    false    410                       1259    268862    letak_bangunan_fk    INDEX     J   CREATE INDEX letak_bangunan_fk ON public.bangunan USING btree (id_tanah);
 %   DROP INDEX public.letak_bangunan_fk;
       public            postgres    false    377            7           1259    268898    letak_buku_alat_fk    INDEX     G   CREATE INDEX letak_buku_alat_fk ON public.buku USING btree (id_ruang);
 &   DROP INDEX public.letak_buku_alat_fk;
       public            postgres    false    386            �           1259    268982    lk_jenis_lk_fk    INDEX     P   CREATE INDEX lk_jenis_lk_fk ON public.layanan_khusus USING btree (id_jenis_lk);
 "   DROP INDEX public.lk_jenis_lk_fk;
       public            postgres    false    409            �           1259    268983    lk_sp_fk    INDEX     I   CREATE INDEX lk_sp_fk ON public.layanan_khusus USING btree (sekolah_id);
    DROP INDEX public.lk_sp_fk;
       public            postgres    false    409            �           1259    268987    mou_bentuk_ks_fk    INDEX     E   CREATE INDEX mou_bentuk_ks_fk ON public.mou USING btree (id_jns_ks);
 $   DROP INDEX public.mou_bentuk_ks_fk;
       public            postgres    false    411            �           1259    268988    mou_dudi_fk    INDEX     >   CREATE INDEX mou_dudi_fk ON public.mou USING btree (dudi_id);
    DROP INDEX public.mou_dudi_fk;
       public            postgres    false    411            �           1259    268989    mou_ls    INDEX     ;   CREATE INDEX mou_ls ON public.mou USING btree (last_sync);
    DROP INDEX public.mou_ls;
       public            postgres    false    411            �           1259    268990    mou_lu    INDEX     =   CREATE INDEX mou_lu ON public.mou USING btree (last_update);
    DROP INDEX public.mou_lu;
       public            postgres    false    411            �           1259    268991    mou_pk    INDEX     ?   CREATE UNIQUE INDEX mou_pk ON public.mou USING btree (mou_id);
    DROP INDEX public.mou_pk;
       public            postgres    false    411            �           1259    268992    mou_sekolah_fk    INDEX     D   CREATE INDEX mou_sekolah_fk ON public.mou USING btree (sekolah_id);
 "   DROP INDEX public.mou_sekolah_fk;
       public            postgres    false    411            �           1259    268993    nilai_test_pk    INDEX     T   CREATE UNIQUE INDEX nilai_test_pk ON public.nilai_test USING btree (nilai_test_id);
 !   DROP INDEX public.nilai_test_pk;
       public            postgres    false    412            �           1259    268996 	   pas_pd_fk    INDEX     K   CREATE INDEX pas_pd_fk ON public.paspor_pd USING btree (peserta_didik_id);
    DROP INDEX public.pas_pd_fk;
       public            postgres    false    413            �           1259    268998 
   pas_ptk_fk    INDEX     C   CREATE INDEX pas_ptk_fk ON public.paspor_ptk USING btree (ptk_id);
    DROP INDEX public.pas_ptk_fk;
       public            postgres    false    414            �           1259    268997    paspor_pd_pk    INDEX     N   CREATE UNIQUE INDEX paspor_pd_pk ON public.paspor_pd USING btree (no_paspor);
     DROP INDEX public.paspor_pd_pk;
       public            postgres    false    413            �           1259    268999    paspor_ptk_pk    INDEX     P   CREATE UNIQUE INDEX paspor_ptk_pk ON public.paspor_ptk USING btree (no_paspor);
 !   DROP INDEX public.paspor_ptk_pk;
       public            postgres    false    414            �           1259    269001    pblj_stat_kuri_fk    INDEX     Y   CREATE INDEX pblj_stat_kuri_fk ON public.pembelajaran USING btree (status_di_kurikulum);
 %   DROP INDEX public.pblj_stat_kuri_fk;
       public            postgres    false    415            �           1259    269024    pd_alasan_pip_fk    INDEX     R   CREATE INDEX pd_alasan_pip_fk ON public.peserta_didik USING btree (id_layak_pip);
 $   DROP INDEX public.pd_alasan_pip_fk;
       public            postgres    false    418            �           1259    269025    pd_bank_rekening_fk    INDEX     P   CREATE INDEX pd_bank_rekening_fk ON public.peserta_didik USING btree (id_bank);
 '   DROP INDEX public.pd_bank_rekening_fk;
       public            postgres    false    418            �           1259    269043    pd_baru_pd_fk    INDEX     X   CREATE INDEX pd_baru_pd_fk ON public.peserta_didik_baru USING btree (peserta_didik_id);
 !   DROP INDEX public.pd_baru_pd_fk;
       public            postgres    false    419            �           1259    269026    pd_jenis_tinggal_fk    INDEX     Y   CREATE INDEX pd_jenis_tinggal_fk ON public.peserta_didik USING btree (jenis_tinggal_id);
 '   DROP INDEX public.pd_jenis_tinggal_fk;
       public            postgres    false    418            �           1259    269088    pd_jurusan_fk    INDEX     [   CREATE INDEX pd_jurusan_fk ON public.registrasi_peserta_didik USING btree (jurusan_sp_id);
 !   DROP INDEX public.pd_jurusan_fk;
       public            postgres    false    426            �           1259    269027    pd_kecamatan_fk    INDEX     Q   CREATE INDEX pd_kecamatan_fk ON public.peserta_didik USING btree (kode_wilayah);
 #   DROP INDEX public.pd_kecamatan_fk;
       public            postgres    false    418            �           1259    269028    pd_kk_fk    INDEX     Q   CREATE INDEX pd_kk_fk ON public.peserta_didik USING btree (kebutuhan_khusus_id);
    DROP INDEX public.pd_kk_fk;
       public            postgres    false    418            �           1259    269050 
   pd_long_ls    INDEX     V   CREATE INDEX pd_long_ls ON public.peserta_didik_longitudinal USING btree (last_sync);
    DROP INDEX public.pd_long_ls;
       public            postgres    false    420            �           1259    269051 
   pd_long_lu    INDEX     X   CREATE INDEX pd_long_lu ON public.peserta_didik_longitudinal USING btree (last_update);
    DROP INDEX public.pd_long_lu;
       public            postgres    false    420            �           1259    269052    pd_long_sem_fk    INDEX     \   CREATE INDEX pd_long_sem_fk ON public.peserta_didik_longitudinal USING btree (semester_id);
 "   DROP INDEX public.pd_long_sem_fk;
       public            postgres    false    420            �           1259    269029    pd_ls    INDEX     D   CREATE INDEX pd_ls ON public.peserta_didik USING btree (last_sync);
    DROP INDEX public.pd_ls;
       public            postgres    false    418            �           1259    269030    pd_lu    INDEX     F   CREATE INDEX pd_lu ON public.peserta_didik USING btree (last_update);
    DROP INDEX public.pd_lu;
       public            postgres    false    418            �           1259    269089    pd_sekolah_unique    INDEX     u   CREATE UNIQUE INDEX pd_sekolah_unique ON public.registrasi_peserta_didik USING btree (peserta_didik_id, sekolah_id);
 %   DROP INDEX public.pd_sekolah_unique;
       public            postgres    false    426    426            �           1259    269031    pd_transport_fk    INDEX     Y   CREATE INDEX pd_transport_fk ON public.peserta_didik USING btree (alat_transportasi_id);
 #   DROP INDEX public.pd_transport_fk;
       public            postgres    false    418            �           1259    269044    pdb_jenisdaftar_fk    INDEX     a   CREATE INDEX pdb_jenisdaftar_fk ON public.peserta_didik_baru USING btree (jenis_pendaftaran_id);
 &   DROP INDEX public.pdb_jenisdaftar_fk;
       public            postgres    false    419            �           1259    269045    pdb_ls    INDEX     J   CREATE INDEX pdb_ls ON public.peserta_didik_baru USING btree (last_sync);
    DROP INDEX public.pdb_ls;
       public            postgres    false    419            �           1259    269046    pdb_lu    INDEX     L   CREATE INDEX pdb_lu ON public.peserta_didik_baru USING btree (last_update);
    DROP INDEX public.pdb_lu;
       public            postgres    false    419            �           1259    269047    pdb_sekolah_fk    INDEX     S   CREATE INDEX pdb_sekolah_fk ON public.peserta_didik_baru USING btree (sekolah_id);
 "   DROP INDEX public.pdb_sekolah_fk;
       public            postgres    false    419            �           1259    269048    pdb_tahunajaran_fk    INDEX     \   CREATE INDEX pdb_tahunajaran_fk ON public.peserta_didik_baru USING btree (tahun_ajaran_id);
 &   DROP INDEX public.pdb_tahunajaran_fk;
       public            postgres    false    419            �           1259    269032    pekerjaan_ayah_fk    INDEX     X   CREATE INDEX pekerjaan_ayah_fk ON public.peserta_didik USING btree (pekerjaan_id_wali);
 %   DROP INDEX public.pekerjaan_ayah_fk;
       public            postgres    false    418            �           1259    269033    pekerjaan_ibu_fk    INDEX     W   CREATE INDEX pekerjaan_ibu_fk ON public.peserta_didik USING btree (pekerjaan_id_ayah);
 $   DROP INDEX public.pekerjaan_ibu_fk;
       public            postgres    false    418            �           1259    269063    pekerjaan_suami_istri_fk    INDEX     Y   CREATE INDEX pekerjaan_suami_istri_fk ON public.ptk USING btree (pekerjaan_suami_istri);
 ,   DROP INDEX public.pekerjaan_suami_istri_fk;
       public            postgres    false    423            �           1259    269034    pekerjaan_wali_fk    INDEX     W   CREATE INDEX pekerjaan_wali_fk ON public.peserta_didik USING btree (pekerjaan_id_ibu);
 %   DROP INDEX public.pekerjaan_wali_fk;
       public            postgres    false    418            �           1259    269002    pembelajaran_guru_fk    INDEX     Y   CREATE INDEX pembelajaran_guru_fk ON public.pembelajaran USING btree (ptk_terdaftar_id);
 (   DROP INDEX public.pembelajaran_guru_fk;
       public            postgres    false    415            �           1259    269003    pembelajaran_ls    INDEX     M   CREATE INDEX pembelajaran_ls ON public.pembelajaran USING btree (last_sync);
 #   DROP INDEX public.pembelajaran_ls;
       public            postgres    false    415            �           1259    269004    pembelajaran_lu    INDEX     O   CREATE INDEX pembelajaran_lu ON public.pembelajaran USING btree (last_update);
 #   DROP INDEX public.pembelajaran_lu;
       public            postgres    false    415            �           1259    269005    pembelajaran_matpel_fk    INDEX     \   CREATE INDEX pembelajaran_matpel_fk ON public.pembelajaran USING btree (mata_pelajaran_id);
 *   DROP INDEX public.pembelajaran_matpel_fk;
       public            postgres    false    415            �           1259    269006    pembelajaran_pk    INDEX     Z   CREATE UNIQUE INDEX pembelajaran_pk ON public.pembelajaran USING btree (pembelajaran_id);
 #   DROP INDEX public.pembelajaran_pk;
       public            postgres    false    415            �           1259    269007    pembelajaran_rombel_fk    INDEX     _   CREATE INDEX pembelajaran_rombel_fk ON public.pembelajaran USING btree (rombongan_belajar_id);
 *   DROP INDEX public.pembelajaran_rombel_fk;
       public            postgres    false    415            �           1259    269008    pembelajaran_semester_fk    INDEX     X   CREATE INDEX pembelajaran_semester_fk ON public.pembelajaran USING btree (semester_id);
 ,   DROP INDEX public.pembelajaran_semester_fk;
       public            postgres    false    415            U           1259    268928    pemberi_izin_fk    INDEX     R   CREATE INDEX pemberi_izin_fk ON public.izin_operasional USING btree (lembaga_id);
 #   DROP INDEX public.pemberi_izin_fk;
       public            postgres    false    397            �           1259    269035    pendidikan_ayah_fk    INDEX     _   CREATE INDEX pendidikan_ayah_fk ON public.peserta_didik USING btree (jenjang_pendidikan_wali);
 &   DROP INDEX public.pendidikan_ayah_fk;
       public            postgres    false    418            �           1259    269036    pendidikan_ibu_fk    INDEX     ^   CREATE INDEX pendidikan_ibu_fk ON public.peserta_didik USING btree (jenjang_pendidikan_ayah);
 %   DROP INDEX public.pendidikan_ibu_fk;
       public            postgres    false    418            �           1259    269037    pendidikan_wali_fk    INDEX     ^   CREATE INDEX pendidikan_wali_fk ON public.peserta_didik USING btree (jenjang_pendidikan_ibu);
 &   DROP INDEX public.pendidikan_wali_fk;
       public            postgres    false    418            ]           1259    269194    penempatan_tugas_tambahan_fk    INDEX     [   CREATE INDEX penempatan_tugas_tambahan_fk ON public.tugas_tambahan USING btree (id_ruang);
 0   DROP INDEX public.penempatan_tugas_tambahan_fk;
       public            postgres    false    450            �           1259    269090    penerimaan_sekolah_fk    INDEX     `   CREATE INDEX penerimaan_sekolah_fk ON public.registrasi_peserta_didik USING btree (sekolah_id);
 )   DROP INDEX public.penerimaan_sekolah_fk;
       public            postgres    false    426            �           1259    269009    pengawas_bidang_rumpun_fk    INDEX     c   CREATE INDEX pengawas_bidang_rumpun_fk ON public.pengawas_terdaftar USING btree (bidang_studi_id);
 -   DROP INDEX public.pengawas_bidang_rumpun_fk;
       public            postgres    false    416            �           1259    269010    pengawas_keluar_fk    INDEX     \   CREATE INDEX pengawas_keluar_fk ON public.pengawas_terdaftar USING btree (jenis_keluar_id);
 &   DROP INDEX public.pengawas_keluar_fk;
       public            postgres    false    416            �           1259    269011    pengawas_lembaga_fk    INDEX     X   CREATE INDEX pengawas_lembaga_fk ON public.pengawas_terdaftar USING btree (lembaga_id);
 '   DROP INDEX public.pengawas_lembaga_fk;
       public            postgres    false    416            �           1259    269012    pengawas_mapel_fk    INDEX     ]   CREATE INDEX pengawas_mapel_fk ON public.pengawas_terdaftar USING btree (mata_pelajaran_id);
 %   DROP INDEX public.pengawas_mapel_fk;
       public            postgres    false    416            �           1259    269013    pengawas_ptk_fk    INDEX     P   CREATE INDEX pengawas_ptk_fk ON public.pengawas_terdaftar USING btree (ptk_id);
 #   DROP INDEX public.pengawas_ptk_fk;
       public            postgres    false    416            �           1259    269014    pengawas_tahun_ajaran_fk    INDEX     b   CREATE INDEX pengawas_tahun_ajaran_fk ON public.pengawas_terdaftar USING btree (tahun_ajaran_id);
 ,   DROP INDEX public.pengawas_tahun_ajaran_fk;
       public            postgres    false    416            �           1259    269015    pengawas_terdaftar_pk    INDEX     l   CREATE UNIQUE INDEX pengawas_terdaftar_pk ON public.pengawas_terdaftar USING btree (pengawas_terdaftar_id);
 )   DROP INDEX public.pengawas_terdaftar_pk;
       public            postgres    false    416            �           1259    269017    penghargaan_jenis_fk    INDEX     \   CREATE INDEX penghargaan_jenis_fk ON public.penghargaan USING btree (jenis_penghargaan_id);
 (   DROP INDEX public.penghargaan_jenis_fk;
       public            postgres    false    417            �           1259    269018    penghargaan_pk    INDEX     W   CREATE UNIQUE INDEX penghargaan_pk ON public.penghargaan USING btree (penghargaan_id);
 "   DROP INDEX public.penghargaan_pk;
       public            postgres    false    417            �           1259    269019    penghargaan_ptk_fk    INDEX     L   CREATE INDEX penghargaan_ptk_fk ON public.penghargaan USING btree (ptk_id);
 &   DROP INDEX public.penghargaan_ptk_fk;
       public            postgres    false    417            �           1259    269020    penghargaan_tingkat_fk    INDEX     `   CREATE INDEX penghargaan_tingkat_fk ON public.penghargaan USING btree (tingkat_penghargaan_id);
 *   DROP INDEX public.penghargaan_tingkat_fk;
       public            postgres    false    417            �           1259    269038    penghasilan_ayah_fk    INDEX     \   CREATE INDEX penghasilan_ayah_fk ON public.peserta_didik USING btree (penghasilan_id_wali);
 '   DROP INDEX public.penghasilan_ayah_fk;
       public            postgres    false    418            �           1259    269039    penghasilan_ibu_fk    INDEX     Z   CREATE INDEX penghasilan_ibu_fk ON public.peserta_didik USING btree (penghasilan_id_ibu);
 &   DROP INDEX public.penghasilan_ibu_fk;
       public            postgres    false    418            W           1259    269188    penghasilan_lulusan_fk    INDEX     [   CREATE INDEX penghasilan_lulusan_fk ON public.tracer_lulusan USING btree (penghasilan_id);
 *   DROP INDEX public.penghasilan_lulusan_fk;
       public            postgres    false    449            �           1259    269040    penghasilan_wali_fk    INDEX     \   CREATE INDEX penghasilan_wali_fk ON public.peserta_didik USING btree (penghasilan_id_ayah);
 '   DROP INDEX public.penghasilan_wali_fk;
       public            postgres    false    418            �           1259    269041    peserta_didik_agama_fk    INDEX     T   CREATE INDEX peserta_didik_agama_fk ON public.peserta_didik USING btree (agama_id);
 *   DROP INDEX public.peserta_didik_agama_fk;
       public            postgres    false    418            �           1259    269049    peserta_didik_baru_pk    INDEX     ]   CREATE UNIQUE INDEX peserta_didik_baru_pk ON public.peserta_didik_baru USING btree (pdb_id);
 )   DROP INDEX public.peserta_didik_baru_pk;
       public            postgres    false    419            �           1259    269053    peserta_didik_longitudinal_pk    INDEX     �   CREATE UNIQUE INDEX peserta_didik_longitudinal_pk ON public.peserta_didik_longitudinal USING btree (peserta_didik_id, semester_id);
 1   DROP INDEX public.peserta_didik_longitudinal_pk;
       public            postgres    false    420    420            �           1259    269042    peserta_didik_pk    INDEX     ]   CREATE UNIQUE INDEX peserta_didik_pk ON public.peserta_didik USING btree (peserta_didik_id);
 $   DROP INDEX public.peserta_didik_pk;
       public            postgres    false    418                       1259    268867    pras_block_fk    INDEX     Y   CREATE INDEX pras_block_fk ON public.bangunan_dari_blockgrant USING btree (id_bangunan);
 !   DROP INDEX public.pras_block_fk;
       public            postgres    false    378                       1259    269113    pras_long_ls    INDEX     P   CREATE INDEX pras_long_ls ON public.ruang_longitudinal USING btree (last_sync);
     DROP INDEX public.pras_long_ls;
       public            postgres    false    430                       1259    269114    pras_long_lu    INDEX     R   CREATE INDEX pras_long_lu ON public.ruang_longitudinal USING btree (last_update);
     DROP INDEX public.pras_long_lu;
       public            postgres    false    430                       1259    269115    prasarana_foto_fk    INDEX     S   CREATE INDEX prasarana_foto_fk ON public.ruang_longitudinal USING btree (blob_id);
 %   DROP INDEX public.prasarana_foto_fk;
       public            postgres    false    430            O           1259    269180    prasarana_jenis_fk    INDEX     R   CREATE INDEX prasarana_jenis_fk ON public.tanah USING btree (jenis_prasarana_id);
 &   DROP INDEX public.prasarana_jenis_fk;
       public            postgres    false    446                       1259    268863    prasarana_jenis_fk2    INDEX     V   CREATE INDEX prasarana_jenis_fk2 ON public.bangunan USING btree (jenis_prasarana_id);
 '   DROP INDEX public.prasarana_jenis_fk2;
       public            postgres    false    377                       1259    269116    prasarana_longitudinal_pk    INDEX     p   CREATE UNIQUE INDEX prasarana_longitudinal_pk ON public.ruang_longitudinal USING btree (id_ruang, semester_id);
 -   DROP INDEX public.prasarana_longitudinal_pk;
       public            postgres    false    430    430            P           1259    269181    prasarana_milik_fk    INDEX     V   CREATE INDEX prasarana_milik_fk ON public.tanah USING btree (kepemilikan_sarpras_id);
 &   DROP INDEX public.prasarana_milik_fk;
       public            postgres    false    446                       1259    268864    prasarana_milik_fk2    INDEX     Z   CREATE INDEX prasarana_milik_fk2 ON public.bangunan USING btree (kepemilikan_sarpras_id);
 '   DROP INDEX public.prasarana_milik_fk2;
       public            postgres    false    377            Q           1259    269182    prasarana_sekolah_fk    INDEX     L   CREATE INDEX prasarana_sekolah_fk ON public.tanah USING btree (sekolah_id);
 (   DROP INDEX public.prasarana_sekolah_fk;
       public            postgres    false    446                       1259    268865    prasarana_sekolah_fk2    INDEX     P   CREATE INDEX prasarana_sekolah_fk2 ON public.bangunan USING btree (sekolah_id);
 )   DROP INDEX public.prasarana_sekolah_fk2;
       public            postgres    false    377                       1259    269117    prasarana_sem_fk    INDEX     V   CREATE INDEX prasarana_sem_fk ON public.ruang_longitudinal USING btree (semester_id);
 $   DROP INDEX public.prasarana_sem_fk;
       public            postgres    false    430            �           1259    269054    prestasi_jenis_fk    INDEX     S   CREATE INDEX prestasi_jenis_fk ON public.prestasi USING btree (jenis_prestasi_id);
 %   DROP INDEX public.prestasi_jenis_fk;
       public            postgres    false    421            �           1259    269055    prestasi_peserta_didik_fk    INDEX     Z   CREATE INDEX prestasi_peserta_didik_fk ON public.prestasi USING btree (peserta_didik_id);
 -   DROP INDEX public.prestasi_peserta_didik_fk;
       public            postgres    false    421            �           1259    269056    prestasi_pk    INDEX     N   CREATE UNIQUE INDEX prestasi_pk ON public.prestasi USING btree (prestasi_id);
    DROP INDEX public.prestasi_pk;
       public            postgres    false    421            �           1259    269057    prestasi_tingkat_fk    INDEX     W   CREATE INDEX prestasi_tingkat_fk ON public.prestasi USING btree (tingkat_prestasi_id);
 '   DROP INDEX public.prestasi_tingkat_fk;
       public            postgres    false    421            �           1259    268806    prodi_akreditasi_fk    INDEX     Y   CREATE INDEX prodi_akreditasi_fk ON public.akreditasi_prodi USING btree (akreditasi_id);
 '   DROP INDEX public.prodi_akreditasi_fk;
       public            postgres    false    363            �           1259    269059    prog_inklusi_kk_fk    INDEX     ]   CREATE INDEX prog_inklusi_kk_fk ON public.program_inklusi USING btree (kebutuhan_khusus_id);
 &   DROP INDEX public.prog_inklusi_kk_fk;
       public            postgres    false    422            �           1259    269064    prog_keahlian_laboran_fk    INDEX     \   CREATE INDEX prog_keahlian_laboran_fk ON public.ptk USING btree (keahlian_laboratorium_id);
 ,   DROP INDEX public.prog_keahlian_laboran_fk;
       public            postgres    false    423            �           1259    269060    program_inklusi_pk    INDEX     V   CREATE UNIQUE INDEX program_inklusi_pk ON public.program_inklusi USING btree (id_pi);
 &   DROP INDEX public.program_inklusi_pk;
       public            postgres    false    422            �           1259    269065    ptk_agama_fk    INDEX     @   CREATE INDEX ptk_agama_fk ON public.ptk USING btree (agama_id);
     DROP INDEX public.ptk_agama_fk;
       public            postgres    false    423            �           1259    269066    ptk_bank_rekening_fk    INDEX     G   CREATE INDEX ptk_bank_rekening_fk ON public.ptk USING btree (id_bank);
 (   DROP INDEX public.ptk_bank_rekening_fk;
       public            postgres    false    423            �           1259    269077    ptk_baru_ls    INDEX     E   CREATE INDEX ptk_baru_ls ON public.ptk_baru USING btree (last_sync);
    DROP INDEX public.ptk_baru_ls;
       public            postgres    false    424            �           1259    269078    ptk_baru_lu    INDEX     G   CREATE INDEX ptk_baru_lu ON public.ptk_baru USING btree (last_update);
    DROP INDEX public.ptk_baru_lu;
       public            postgres    false    424            �           1259    269079    ptk_baru_pk    INDEX     N   CREATE UNIQUE INDEX ptk_baru_pk ON public.ptk_baru USING btree (ptk_baru_id);
    DROP INDEX public.ptk_baru_pk;
       public            postgres    false    424            �           1259    269080    ptk_baru_ptk_fk    INDEX     F   CREATE INDEX ptk_baru_ptk_fk ON public.ptk_baru USING btree (ptk_id);
 #   DROP INDEX public.ptk_baru_ptk_fk;
       public            postgres    false    424            �           1259    269081    ptk_baru_sekolah_fk    INDEX     N   CREATE INDEX ptk_baru_sekolah_fk ON public.ptk_baru USING btree (sekolah_id);
 '   DROP INDEX public.ptk_baru_sekolah_fk;
       public            postgres    false    424            �           1259    269082    ptk_baru_thajaran_fk    INDEX     T   CREATE INDEX ptk_baru_thajaran_fk ON public.ptk_baru USING btree (tahun_ajaran_id);
 (   DROP INDEX public.ptk_baru_thajaran_fk;
       public            postgres    false    424            �           1259    269067    ptk_foto_fk    INDEX     >   CREATE INDEX ptk_foto_fk ON public.ptk USING btree (blob_id);
    DROP INDEX public.ptk_foto_fk;
       public            postgres    false    423            �           1259    269068    ptk_jenis_fk    INDEX     D   CREATE INDEX ptk_jenis_fk ON public.ptk USING btree (jenis_ptk_id);
     DROP INDEX public.ptk_jenis_fk;
       public            postgres    false    423            �           1259    269016    ptk_jenjangkepengawasan_fk    INDEX     l   CREATE INDEX ptk_jenjangkepengawasan_fk ON public.pengawas_terdaftar USING btree (jenjang_kepengawasan_id);
 .   DROP INDEX public.ptk_jenjangkepengawasan_fk;
       public            postgres    false    416            �           1259    269069    ptk_kecamatan_fk    INDEX     H   CREATE INDEX ptk_kecamatan_fk ON public.ptk USING btree (kode_wilayah);
 $   DROP INDEX public.ptk_kecamatan_fk;
       public            postgres    false    423            �           1259    269083    ptk_keluar_fk    INDEX     R   CREATE INDEX ptk_keluar_fk ON public.ptk_terdaftar USING btree (jenis_keluar_id);
 !   DROP INDEX public.ptk_keluar_fk;
       public            postgres    false    425            �           1259    269070    ptk_mampuhandle_kk_fk    INDEX     P   CREATE INDEX ptk_mampuhandle_kk_fk ON public.ptk USING btree (mampu_handle_kk);
 )   DROP INDEX public.ptk_mampuhandle_kk_fk;
       public            postgres    false    423            �           1259    269071    ptk_pang_gol_terakhir_fk    INDEX     W   CREATE INDEX ptk_pang_gol_terakhir_fk ON public.ptk USING btree (pangkat_golongan_id);
 ,   DROP INDEX public.ptk_pang_gol_terakhir_fk;
       public            postgres    false    423            �           1259    269072    ptk_pengangkat_fk    INDEX     R   CREATE INDEX ptk_pengangkat_fk ON public.ptk USING btree (lembaga_pengangkat_id);
 %   DROP INDEX public.ptk_pengangkat_fk;
       public            postgres    false    423            �           1259    269073    ptk_pk    INDEX     ?   CREATE UNIQUE INDEX ptk_pk ON public.ptk USING btree (ptk_id);
    DROP INDEX public.ptk_pk;
       public            postgres    false    423            �           1259    269084    ptk_sekolah_unique    INDEX     r   CREATE UNIQUE INDEX ptk_sekolah_unique ON public.ptk_terdaftar USING btree (ptk_id, sekolah_id, tahun_ajaran_id);
 &   DROP INDEX public.ptk_sekolah_unique;
       public            postgres    false    425    425    425            �           1259    269074    ptk_status_aktif_fk    INDEX     R   CREATE INDEX ptk_status_aktif_fk ON public.ptk USING btree (status_keaktifan_id);
 '   DROP INDEX public.ptk_status_aktif_fk;
       public            postgres    false    423            �           1259    269075    ptk_statuspegawai_fk    INDEX     U   CREATE INDEX ptk_statuspegawai_fk ON public.ptk USING btree (status_kepegawaian_id);
 (   DROP INDEX public.ptk_statuspegawai_fk;
       public            postgres    false    423            �           1259    269085    ptk_terdaftar_mulai_fk    INDEX     [   CREATE INDEX ptk_terdaftar_mulai_fk ON public.ptk_terdaftar USING btree (tahun_ajaran_id);
 *   DROP INDEX public.ptk_terdaftar_mulai_fk;
       public            postgres    false    425            �           1259    269086    ptk_terdaftar_pk    INDEX     ]   CREATE UNIQUE INDEX ptk_terdaftar_pk ON public.ptk_terdaftar USING btree (ptk_terdaftar_id);
 $   DROP INDEX public.ptk_terdaftar_pk;
       public            postgres    false    425            �           1259    269087    ptk_terdaftar_sekolah_fk    INDEX     X   CREATE INDEX ptk_terdaftar_sekolah_fk ON public.ptk_terdaftar USING btree (sekolah_id);
 ,   DROP INDEX public.ptk_terdaftar_sekolah_fk;
       public            postgres    false    425            �           1259    269091    reg_pd_jenis_daftar_fk    INDEX     k   CREATE INDEX reg_pd_jenis_daftar_fk ON public.registrasi_peserta_didik USING btree (jenis_pendaftaran_id);
 *   DROP INDEX public.reg_pd_jenis_daftar_fk;
       public            postgres    false    426            �           1259    269092    regis_keluar_fk    INDEX     _   CREATE INDEX regis_keluar_fk ON public.registrasi_peserta_didik USING btree (jenis_keluar_id);
 #   DROP INDEX public.regis_keluar_fk;
       public            postgres    false    426            �           1259    269093    registrasi_peserta_didik_pk    INDEX     p   CREATE UNIQUE INDEX registrasi_peserta_didik_pk ON public.registrasi_peserta_didik USING btree (registrasi_id);
 /   DROP INDEX public.registrasi_peserta_didik_pk;
       public            postgres    false    426            �           1259    269094    regpd_cita_fk    INDEX     U   CREATE INDEX regpd_cita_fk ON public.registrasi_peserta_didik USING btree (id_cita);
 !   DROP INDEX public.regpd_cita_fk;
       public            postgres    false    426            �           1259    269095    regpd_hobby_fk    INDEX     W   CREATE INDEX regpd_hobby_fk ON public.registrasi_peserta_didik USING btree (id_hobby);
 "   DROP INDEX public.regpd_hobby_fk;
       public            postgres    false    426            �           1259    269096    riwayat_gaji_berkala_pk    INDEX     r   CREATE UNIQUE INDEX riwayat_gaji_berkala_pk ON public.riwayat_gaji_berkala USING btree (riwayat_gaji_berkala_id);
 +   DROP INDEX public.riwayat_gaji_berkala_pk;
       public            postgres    false    427                        1259    269097    riwayat_gaji_ptk_fk    INDEX     V   CREATE INDEX riwayat_gaji_ptk_fk ON public.riwayat_gaji_berkala USING btree (ptk_id);
 '   DROP INDEX public.riwayat_gaji_ptk_fk;
       public            postgres    false    427            !           1259    269130    riwayat_gelar_fk    INDEX     Y   CREATE INDEX riwayat_gelar_fk ON public.rwy_pend_formal USING btree (gelar_akademik_id);
 $   DROP INDEX public.riwayat_gelar_fk;
       public            postgres    false    434                       1259    269121    riwayat_pang_gol_fk    INDEX     ^   CREATE INDEX riwayat_pang_gol_fk ON public.rwy_kepangkatan USING btree (pangkat_golongan_id);
 '   DROP INDEX public.riwayat_pang_gol_fk;
       public            postgres    false    432                       1259    269122    riwayat_pangkat_ptk_fk    INDEX     T   CREATE INDEX riwayat_pangkat_ptk_fk ON public.rwy_kepangkatan USING btree (ptk_id);
 *   DROP INDEX public.riwayat_pangkat_ptk_fk;
       public            postgres    false    432                       1259    269099    rombel_jenis_fk    INDEX     U   CREATE INDEX rombel_jenis_fk ON public.rombongan_belajar USING btree (jenis_rombel);
 #   DROP INDEX public.rombel_jenis_fk;
       public            postgres    false    428                       1259    269100    rombel_jurusan_fk    INDEX     X   CREATE INDEX rombel_jurusan_fk ON public.rombongan_belajar USING btree (jurusan_sp_id);
 %   DROP INDEX public.rombel_jurusan_fk;
       public            postgres    false    428                       1259    269101    rombel_kk_fk    INDEX     Y   CREATE INDEX rombel_kk_fk ON public.rombongan_belajar USING btree (kebutuhan_khusus_id);
     DROP INDEX public.rombel_kk_fk;
       public            postgres    false    428                       1259    269102    rombel_kur_fk    INDEX     S   CREATE INDEX rombel_kur_fk ON public.rombongan_belajar USING btree (kurikulum_id);
 !   DROP INDEX public.rombel_kur_fk;
       public            postgres    false    428                       1259    268850    rombel_pd_unique    INDEX     t   CREATE UNIQUE INDEX rombel_pd_unique ON public.anggota_rombel USING btree (rombongan_belajar_id, peserta_didik_id);
 $   DROP INDEX public.rombel_pd_unique;
       public            postgres    false    374    374                       1259    269103    rombel_prasarana_fk    INDEX     U   CREATE INDEX rombel_prasarana_fk ON public.rombongan_belajar USING btree (id_ruang);
 '   DROP INDEX public.rombel_prasarana_fk;
       public            postgres    false    428                       1259    269104    rombel_sekolah_fk    INDEX     U   CREATE INDEX rombel_sekolah_fk ON public.rombongan_belajar USING btree (sekolah_id);
 %   DROP INDEX public.rombel_sekolah_fk;
       public            postgres    false    428                       1259    269105    rombel_semester_fk    INDEX     W   CREATE INDEX rombel_semester_fk ON public.rombongan_belajar USING btree (semester_id);
 &   DROP INDEX public.rombel_semester_fk;
       public            postgres    false    428            	           1259    269106    rombel_tingkat_fk    INDEX     `   CREATE INDEX rombel_tingkat_fk ON public.rombongan_belajar USING btree (tingkat_pendidikan_id);
 %   DROP INDEX public.rombel_tingkat_fk;
       public            postgres    false    428            
           1259    269107    rombongan_belajar_pk    INDEX     i   CREATE UNIQUE INDEX rombongan_belajar_pk ON public.rombongan_belajar USING btree (rombongan_belajar_id);
 (   DROP INDEX public.rombongan_belajar_pk;
       public            postgres    false    428                       1259    269109    ruang_bangunan_fk    INDEX     J   CREATE INDEX ruang_bangunan_fk ON public.ruang USING btree (id_bangunan);
 %   DROP INDEX public.ruang_bangunan_fk;
       public            postgres    false    429                       1259    269110    ruang_jenis_prasarana_fk    INDEX     X   CREATE INDEX ruang_jenis_prasarana_fk ON public.ruang USING btree (jenis_prasarana_id);
 ,   DROP INDEX public.ruang_jenis_prasarana_fk;
       public            postgres    false    429                       1259    269111    ruang_pk    INDEX     E   CREATE UNIQUE INDEX ruang_pk ON public.ruang USING btree (id_ruang);
    DROP INDEX public.ruang_pk;
       public            postgres    false    429                       1259    269112    ruang_sekolah_fk    INDEX     H   CREATE INDEX ruang_sekolah_fk ON public.ruang USING btree (sekolah_id);
 $   DROP INDEX public.ruang_sekolah_fk;
       public            postgres    false    429                       1259    269119    rwy_fungsional_pk    INDEX     d   CREATE UNIQUE INDEX rwy_fungsional_pk ON public.rwy_fungsional USING btree (riwayat_fungsional_id);
 %   DROP INDEX public.rwy_fungsional_pk;
       public            postgres    false    431                       1259    269123    rwy_kepangkatan_pk    INDEX     g   CREATE UNIQUE INDEX rwy_kepangkatan_pk ON public.rwy_kepangkatan USING btree (riwayat_kepangkatan_id);
 &   DROP INDEX public.rwy_kepangkatan_pk;
       public            postgres    false    432                       1259    269128    rwy_kerja_pk    INDEX     Q   CREATE UNIQUE INDEX rwy_kerja_pk ON public.rwy_kerja USING btree (rwy_kerja_id);
     DROP INDEX public.rwy_kerja_pk;
       public            postgres    false    433            "           1259    269131    rwy_pend_formal_pk    INDEX     m   CREATE UNIQUE INDEX rwy_pend_formal_pk ON public.rwy_pend_formal USING btree (riwayat_pendidikan_formal_id);
 &   DROP INDEX public.rwy_pend_formal_pk;
       public            postgres    false    434            &           1259    269136    rwy_sertifikasi_pk    INDEX     g   CREATE UNIQUE INDEX rwy_sertifikasi_pk ON public.rwy_sertifikasi USING btree (riwayat_sertifikasi_id);
 &   DROP INDEX public.rwy_sertifikasi_pk;
       public            postgres    false    435            +           1259    269143    rwy_struktural_pk    INDEX     d   CREATE UNIQUE INDEX rwy_struktural_pk ON public.rwy_struktural USING btree (riwayat_struktural_id);
 %   DROP INDEX public.rwy_struktural_pk;
       public            postgres    false    436            '           1259    269137    rwyt_bidang_sertifikasi_fk    INDEX     a   CREATE INDEX rwyt_bidang_sertifikasi_fk ON public.rwy_sertifikasi USING btree (bidang_studi_id);
 .   DROP INDEX public.rwyt_bidang_sertifikasi_fk;
       public            postgres    false    435                       1259    269120    rwyt_fung_fk    INDEX     X   CREATE INDEX rwyt_fung_fk ON public.rwy_fungsional USING btree (jabatan_fungsional_id);
     DROP INDEX public.rwyt_fung_fk;
       public            postgres    false    431            ,           1259    269145    rwyt_jab_fk    INDEX     P   CREATE INDEX rwyt_jab_fk ON public.rwy_struktural USING btree (jabatan_ptk_id);
    DROP INDEX public.rwyt_jab_fk;
       public            postgres    false    436                       1259    269098    rwyt_kgb_pang_gol_fk    INDEX     d   CREATE INDEX rwyt_kgb_pang_gol_fk ON public.riwayat_gaji_berkala USING btree (pangkat_golongan_id);
 (   DROP INDEX public.rwyt_kgb_pang_gol_fk;
       public            postgres    false    427            #           1259    269132    rwyt_pend_formal_bidangstudi_fk    INDEX     f   CREATE INDEX rwyt_pend_formal_bidangstudi_fk ON public.rwy_pend_formal USING btree (bidang_studi_id);
 3   DROP INDEX public.rwyt_pend_formal_bidangstudi_fk;
       public            postgres    false    434            $           1259    269133    rwyt_pend_formal_jenjang_fk    INDEX     h   CREATE INDEX rwyt_pend_formal_jenjang_fk ON public.rwy_pend_formal USING btree (jenjang_pendidikan_id);
 /   DROP INDEX public.rwyt_pend_formal_jenjang_fk;
       public            postgres    false    434            %           1259    269135    rwyt_pend_formal_ptk_fk    INDEX     U   CREATE INDEX rwyt_pend_formal_ptk_fk ON public.rwy_pend_formal USING btree (ptk_id);
 +   DROP INDEX public.rwyt_pend_formal_ptk_fk;
       public            postgres    false    434            (           1259    269138    rwyt_sert_jenis_fk    INDEX     ^   CREATE INDEX rwyt_sert_jenis_fk ON public.rwy_sertifikasi USING btree (id_jenis_sertifikasi);
 &   DROP INDEX public.rwyt_sert_jenis_fk;
       public            postgres    false    435            )           1259    269140    rwyt_sert_ptk_fk    INDEX     N   CREATE INDEX rwyt_sert_ptk_fk ON public.rwy_sertifikasi USING btree (ptk_id);
 $   DROP INDEX public.rwyt_sert_ptk_fk;
       public            postgres    false    435            -           1259    269146    sanitasi_pk    INDEX     Z   CREATE UNIQUE INDEX sanitasi_pk ON public.sanitasi USING btree (sekolah_id, semester_id);
    DROP INDEX public.sanitasi_pk;
       public            postgres    false    437    437            .           1259    269147    sanitasi_sem_fk    INDEX     K   CREATE INDEX sanitasi_sem_fk ON public.sanitasi USING btree (semester_id);
 #   DROP INDEX public.sanitasi_sem_fk;
       public            postgres    false    437            /           1259    269148    sanitasi_sumber_fk    INDEX     P   CREATE INDEX sanitasi_sumber_fk ON public.sanitasi USING btree (sumber_air_id);
 &   DROP INDEX public.sanitasi_sumber_fk;
       public            postgres    false    437            �           1259    268826    sarana_block_fk    INDEX     S   CREATE INDEX sarana_block_fk ON public.alat_dari_blockgrant USING btree (id_alat);
 #   DROP INDEX public.sarana_block_fk;
       public            postgres    false    368                       1259    268854    sarana_jenis_fk    INDEX     O   CREATE INDEX sarana_jenis_fk ON public.angkutan USING btree (jenis_sarana_id);
 #   DROP INDEX public.sarana_jenis_fk;
       public            postgres    false    375            �           1259    268822    sarana_jenis_fk2    INDEX     L   CREATE INDEX sarana_jenis_fk2 ON public.alat USING btree (jenis_sarana_id);
 $   DROP INDEX public.sarana_jenis_fk2;
       public            postgres    false    367            �           1259    268827    sarana_longitudinal_pk    INDEX     k   CREATE UNIQUE INDEX sarana_longitudinal_pk ON public.alat_longitudinal USING btree (id_alat, semester_id);
 *   DROP INDEX public.sarana_longitudinal_pk;
       public            postgres    false    369    369                       1259    268855    sarana_milik_fk    INDEX     V   CREATE INDEX sarana_milik_fk ON public.angkutan USING btree (kepemilikan_sarpras_id);
 #   DROP INDEX public.sarana_milik_fk;
       public            postgres    false    375            �           1259    268823    sarana_milik_fk2    INDEX     S   CREATE INDEX sarana_milik_fk2 ON public.alat USING btree (kepemilikan_sarpras_id);
 $   DROP INDEX public.sarana_milik_fk2;
       public            postgres    false    367                       1259    268856    sarana_sekolah_fk    INDEX     L   CREATE INDEX sarana_sekolah_fk ON public.angkutan USING btree (sekolah_id);
 %   DROP INDEX public.sarana_sekolah_fk;
       public            postgres    false    375            �           1259    268824    sarana_sekolah_fk2    INDEX     I   CREATE INDEX sarana_sekolah_fk2 ON public.alat USING btree (sekolah_id);
 &   DROP INDEX public.sarana_sekolah_fk2;
       public            postgres    false    367            �           1259    268828    sarana_sem_fk    INDEX     R   CREATE INDEX sarana_sem_fk ON public.alat_longitudinal USING btree (semester_id);
 !   DROP INDEX public.sarana_sem_fk;
       public            postgres    false    369            L           1259    268919    sasaran_guru_fk    INDEX     ]   CREATE INDEX sasaran_guru_fk ON public.guru_sasaran_pengawas USING btree (ptk_terdaftar_id);
 #   DROP INDEX public.sasaran_guru_fk;
       public            postgres    false    394            0           1259    269149    sasaran_pengawasan_pk    INDEX     x   CREATE UNIQUE INDEX sasaran_pengawasan_pk ON public.sasaran_pengawasan USING btree (pengawas_terdaftar_id, sekolah_id);
 )   DROP INDEX public.sasaran_pengawasan_pk;
       public            postgres    false    438    438            1           1259    269150    sasaran_sekolah_fk    INDEX     W   CREATE INDEX sasaran_sekolah_fk ON public.sasaran_pengawasan USING btree (sekolah_id);
 &   DROP INDEX public.sasaran_sekolah_fk;
       public            postgres    false    438            )           1259    268884    sdm_bidang_fk    INDEX     O   CREATE INDEX sdm_bidang_fk ON public.bidang_sdm USING btree (bidang_studi_id);
 !   DROP INDEX public.sdm_bidang_fk;
       public            postgres    false    383            �           1259    268976    sejahtera_pd_fk    INDEX     X   CREATE INDEX sejahtera_pd_fk ON public.kesejahteraan_pd USING btree (peserta_didik_id);
 #   DROP INDEX public.sejahtera_pd_fk;
       public            postgres    false    406            2           1259    269151    sekolah_bentuk_fk    INDEX     U   CREATE INDEX sekolah_bentuk_fk ON public.sekolah USING btree (bentuk_pendidikan_id);
 %   DROP INDEX public.sekolah_bentuk_fk;
       public            postgres    false    439            9           1259    269158    sekolah_foto_fk    INDEX     S   CREATE INDEX sekolah_foto_fk ON public.sekolah_longitudinal USING btree (blob_id);
 #   DROP INDEX public.sekolah_foto_fk;
       public            postgres    false    440            :           1259    269159    sekolah_internet_2_fk    INDEX     c   CREATE INDEX sekolah_internet_2_fk ON public.sekolah_longitudinal USING btree (akses_internet_id);
 )   DROP INDEX public.sekolah_internet_2_fk;
       public            postgres    false    440            ;           1259    269160    sekolah_internet_fk    INDEX     c   CREATE INDEX sekolah_internet_fk ON public.sekolah_longitudinal USING btree (akses_internet_2_id);
 '   DROP INDEX public.sekolah_internet_fk;
       public            postgres    false    440            J           1259    268917    sekolah_inti_fk    INDEX     T   CREATE INDEX sekolah_inti_fk ON public.gugus_sekolah USING btree (sekolah_inti_id);
 #   DROP INDEX public.sekolah_inti_fk;
       public            postgres    false    393            <           1259    269161    sekolah_iso_fk    INDEX     ]   CREATE INDEX sekolah_iso_fk ON public.sekolah_longitudinal USING btree (sertifikasi_iso_id);
 "   DROP INDEX public.sekolah_iso_fk;
       public            postgres    false    440            3           1259    269152    sekolah_layanan_kk_fk    INDEX     X   CREATE INDEX sekolah_layanan_kk_fk ON public.sekolah USING btree (kebutuhan_khusus_id);
 )   DROP INDEX public.sekolah_layanan_kk_fk;
       public            postgres    false    439            =           1259    269162    sekolah_listrik_fk    INDEX     `   CREATE INDEX sekolah_listrik_fk ON public.sekolah_longitudinal USING btree (sumber_listrik_id);
 &   DROP INDEX public.sekolah_listrik_fk;
       public            postgres    false    440            >           1259    269163    sekolah_long_sem_fk    INDEX     [   CREATE INDEX sekolah_long_sem_fk ON public.sekolah_longitudinal USING btree (semester_id);
 '   DROP INDEX public.sekolah_long_sem_fk;
       public            postgres    false    440            ?           1259    269164    sekolah_longitudinal_pk    INDEX     r   CREATE UNIQUE INDEX sekolah_longitudinal_pk ON public.sekolah_longitudinal USING btree (sekolah_id, semester_id);
 +   DROP INDEX public.sekolah_longitudinal_pk;
       public            postgres    false    440    440            4           1259    269153 
   sekolah_pk    INDEX     K   CREATE UNIQUE INDEX sekolah_pk ON public.sekolah USING btree (sekolah_id);
    DROP INDEX public.sekolah_pk;
       public            postgres    false    439            5           1259    269154    sekolah_st_kepemilikan_fk    INDEX     ^   CREATE INDEX sekolah_st_kepemilikan_fk ON public.sekolah USING btree (status_kepemilikan_id);
 -   DROP INDEX public.sekolah_st_kepemilikan_fk;
       public            postgres    false    439            @           1259    269165    sekolah_waktu_fk    INDEX     e   CREATE INDEX sekolah_waktu_fk ON public.sekolah_longitudinal USING btree (waktu_penyelenggaraan_id);
 $   DROP INDEX public.sekolah_waktu_fk;
       public            postgres    false    440            C           1259    269168    sert_pd_bidang_fk    INDEX     W   CREATE INDEX sert_pd_bidang_fk ON public.sertifikasi_pd USING btree (bidang_studi_id);
 %   DROP INDEX public.sert_pd_bidang_fk;
       public            postgres    false    441            D           1259    269169 
   sert_pd_fk    INDEX     Q   CREATE INDEX sert_pd_fk ON public.sertifikasi_pd USING btree (peserta_didik_id);
    DROP INDEX public.sert_pd_fk;
       public            postgres    false    441            E           1259    269170    sert_pd_jns_fk    INDEX     Y   CREATE INDEX sert_pd_jns_fk ON public.sertifikasi_pd USING btree (id_jenis_sertifikasi);
 "   DROP INDEX public.sert_pd_jns_fk;
       public            postgres    false    441            F           1259    269171    sert_pd_lemb_fk    INDEX     T   CREATE INDEX sert_pd_lemb_fk ON public.sertifikasi_pd USING btree (kode_lemb_sert);
 #   DROP INDEX public.sert_pd_lemb_fk;
       public            postgres    false    441            G           1259    269172    sertifikasi_pd_pk    INDEX     Y   CREATE UNIQUE INDEX sertifikasi_pd_pk ON public.sertifikasi_pd USING btree (id_sert_pd);
 %   DROP INDEX public.sertifikasi_pd_pk;
       public            postgres    false    441            �           1259    268810    sp_akred_fk    INDEX     K   CREATE INDEX sp_akred_fk ON public.akreditasi_sp USING btree (sekolah_id);
    DROP INDEX public.sp_akred_fk;
       public            postgres    false    364            A           1259    269166 
   sp_long_ls    INDEX     P   CREATE INDEX sp_long_ls ON public.sekolah_longitudinal USING btree (last_sync);
    DROP INDEX public.sp_long_ls;
       public            postgres    false    440            B           1259    269167 
   sp_long_lu    INDEX     R   CREATE INDEX sp_long_lu ON public.sekolah_longitudinal USING btree (last_update);
    DROP INDEX public.sp_long_lu;
       public            postgres    false    440            6           1259    269155    sp_ls    INDEX     >   CREATE INDEX sp_ls ON public.sekolah USING btree (last_sync);
    DROP INDEX public.sp_ls;
       public            postgres    false    439            7           1259    269156    sp_lu    INDEX     @   CREATE INDEX sp_lu ON public.sekolah USING btree (last_update);
    DROP INDEX public.sp_lu;
       public            postgres    false    439            8           1259    269157    sp_yayasan_fk    INDEX     G   CREATE INDEX sp_yayasan_fk ON public.sekolah USING btree (yayasan_id);
 !   DROP INDEX public.sp_yayasan_fk;
       public            postgres    false    439            �           1259    269076    sumber_gaji_ptk_fk    INDEX     L   CREATE INDEX sumber_gaji_ptk_fk ON public.ptk USING btree (sumber_gaji_id);
 &   DROP INDEX public.sumber_gaji_ptk_fk;
       public            postgres    false    423            L           1259    269177    sync_log_instalasi_fk2    INDEX     Y   CREATE INDEX sync_log_instalasi_fk2 ON public.table_sync_log USING btree (id_instalasi);
 *   DROP INDEX public.sync_log_instalasi_fk2;
       public            postgres    false    445            H           1259    269173    sync_log_pk    INDEX     [   CREATE UNIQUE INDEX sync_log_pk ON public.sync_log USING btree (id_instalasi, begin_sync);
    DROP INDEX public.sync_log_pk;
       public            postgres    false    442    442            I           1259    269174    sync_primer_pk    INDEX     l   CREATE UNIQUE INDEX sync_primer_pk ON public.sync_primer USING btree (table_name, id_instalasi, id_thread);
 "   DROP INDEX public.sync_primer_pk;
       public            postgres    false    443    443    443            J           1259    269175    sync_session_pk    INDEX     P   CREATE UNIQUE INDEX sync_session_pk ON public.sync_session USING btree (token);
 #   DROP INDEX public.sync_session_pk;
       public            postgres    false    444            K           1259    269176    syncses_instalasi_fk    INDEX     U   CREATE INDEX syncses_instalasi_fk ON public.sync_session USING btree (id_instalasi);
 (   DROP INDEX public.syncses_instalasi_fk;
       public            postgres    false    444            M           1259    269178    table_sync_log_pk    INDEX     g   CREATE UNIQUE INDEX table_sync_log_pk ON public.table_sync_log USING btree (table_name, id_instalasi);
 %   DROP INDEX public.table_sync_log_pk;
       public            postgres    false    445    445            S           1259    269184    tanah_block_fk    INDEX     T   CREATE INDEX tanah_block_fk ON public.tanah_dari_blockgrant USING btree (id_tanah);
 "   DROP INDEX public.tanah_block_fk;
       public            postgres    false    447            T           1259    269185    tanah_dari_blockgrant_pk    INDEX     t   CREATE UNIQUE INDEX tanah_dari_blockgrant_pk ON public.tanah_dari_blockgrant USING btree (blockgrant_id, id_tanah);
 ,   DROP INDEX public.tanah_dari_blockgrant_pk;
       public            postgres    false    447    447            U           1259    269186    tanah_long_periode_fk    INDEX     _   CREATE INDEX tanah_long_periode_fk ON public.tanah_longitudinal USING btree (tahun_ajaran_id);
 )   DROP INDEX public.tanah_long_periode_fk;
       public            postgres    false    448            V           1259    269187    tanah_longitudinal_pk    INDEX     p   CREATE UNIQUE INDEX tanah_longitudinal_pk ON public.tanah_longitudinal USING btree (id_tanah, tahun_ajaran_id);
 )   DROP INDEX public.tanah_longitudinal_pk;
       public            postgres    false    448    448            R           1259    269183    tanah_pk    INDEX     E   CREATE UNIQUE INDEX tanah_pk ON public.tanah USING btree (id_tanah);
    DROP INDEX public.tanah_pk;
       public            postgres    false    446                        1259    269129    tempatkerja_sekolah_jenjang_fk    INDEX     e   CREATE INDEX tempatkerja_sekolah_jenjang_fk ON public.rwy_kerja USING btree (jenjang_pendidikan_id);
 2   DROP INDEX public.tempatkerja_sekolah_jenjang_fk;
       public            postgres    false    433            �           1259    268994    test_jenis_fk    INDEX     M   CREATE INDEX test_jenis_fk ON public.nilai_test USING btree (jenis_test_id);
 !   DROP INDEX public.test_jenis_fk;
       public            postgres    false    412            �           1259    268995    test_kebahasaan_ptk_fk    INDEX     O   CREATE INDEX test_kebahasaan_ptk_fk ON public.nilai_test USING btree (ptk_id);
 *   DROP INDEX public.test_kebahasaan_ptk_fk;
       public            postgres    false    412            X           1259    269189    tracer_bidang_usaha_fk    INDEX     \   CREATE INDEX tracer_bidang_usaha_fk ON public.tracer_lulusan USING btree (bidang_usaha_id);
 *   DROP INDEX public.tracer_bidang_usaha_fk;
       public            postgres    false    449            Y           1259    269190    tracer_dudi_fk    INDEX     L   CREATE INDEX tracer_dudi_fk ON public.tracer_lulusan USING btree (dudi_id);
 "   DROP INDEX public.tracer_dudi_fk;
       public            postgres    false    449            Z           1259    269191    tracer_lulusan_pk    INDEX     X   CREATE UNIQUE INDEX tracer_lulusan_pk ON public.tracer_lulusan USING btree (id_tracer);
 %   DROP INDEX public.tracer_lulusan_pk;
       public            postgres    false    449            [           1259    269192    tracer_pekerjaan_fk    INDEX     V   CREATE INDEX tracer_pekerjaan_fk ON public.tracer_lulusan USING btree (pekerjaan_id);
 '   DROP INDEX public.tracer_pekerjaan_fk;
       public            postgres    false    449            \           1259    269193    tracer_regpd_fk    INDEX     S   CREATE INDEX tracer_regpd_fk ON public.tracer_lulusan USING btree (registrasi_id);
 #   DROP INDEX public.tracer_regpd_fk;
       public            postgres    false    449            ^           1259    269195    tug_tambahan_jab_fk    INDEX     X   CREATE INDEX tug_tambahan_jab_fk ON public.tugas_tambahan USING btree (jabatan_ptk_id);
 '   DROP INDEX public.tug_tambahan_jab_fk;
       public            postgres    false    450            _           1259    269196    tugas_tambahan_pk    INDEX     d   CREATE UNIQUE INDEX tugas_tambahan_pk ON public.tugas_tambahan USING btree (ptk_tugas_tambahan_id);
 %   DROP INDEX public.tugas_tambahan_pk;
       public            postgres    false    450            `           1259    269197    tugtam_ptk_fk    INDEX     J   CREATE INDEX tugtam_ptk_fk ON public.tugas_tambahan USING btree (ptk_id);
 !   DROP INDEX public.tugtam_ptk_fk;
       public            postgres    false    450            a           1259    269198    tugtam_sekolah_fk    INDEX     R   CREATE INDEX tugtam_sekolah_fk ON public.tugas_tambahan USING btree (sekolah_id);
 %   DROP INDEX public.tugtam_sekolah_fk;
       public            postgres    false    450            b           1259    269199    tunj_sem_fk    INDEX     H   CREATE INDEX tunj_sem_fk ON public.tunjangan USING btree (semester_id);
    DROP INDEX public.tunj_sem_fk;
       public            postgres    false    451            c           1259    269200    tunjangan_jenis_fk    INDEX     V   CREATE INDEX tunjangan_jenis_fk ON public.tunjangan USING btree (jenis_tunjangan_id);
 &   DROP INDEX public.tunjangan_jenis_fk;
       public            postgres    false    451            d           1259    269201    tunjangan_pk    INDEX     Q   CREATE UNIQUE INDEX tunjangan_pk ON public.tunjangan USING btree (tunjangan_id);
     DROP INDEX public.tunjangan_pk;
       public            postgres    false    451            e           1259    269202    tunjangan_ptk_fk    INDEX     H   CREATE INDEX tunjangan_ptk_fk ON public.tunjangan USING btree (ptk_id);
 $   DROP INDEX public.tunjangan_ptk_fk;
       public            postgres    false    451            l           1259    269209 
   unit_ks_ls    INDEX     P   CREATE INDEX unit_ks_ls ON public.unit_usaha_kerjasama USING btree (last_sync);
    DROP INDEX public.unit_ks_ls;
       public            postgres    false    453            m           1259    269210 
   unit_ks_lu    INDEX     R   CREATE INDEX unit_ks_lu ON public.unit_usaha_kerjasama USING btree (last_update);
    DROP INDEX public.unit_ks_lu;
       public            postgres    false    453            f           1259    269203    unit_usaha_kelompok_fk    INDEX     Z   CREATE INDEX unit_usaha_kelompok_fk ON public.unit_usaha USING btree (kelompok_usaha_id);
 *   DROP INDEX public.unit_usaha_kelompok_fk;
       public            postgres    false    452            n           1259    269211    unit_usaha_kerjasama_pk    INDEX     p   CREATE UNIQUE INDEX unit_usaha_kerjasama_pk ON public.unit_usaha_kerjasama USING btree (mou_id, unit_usaha_id);
 +   DROP INDEX public.unit_usaha_kerjasama_pk;
       public            postgres    false    453    453            g           1259    269204    unit_usaha_ls    INDEX     I   CREATE INDEX unit_usaha_ls ON public.unit_usaha USING btree (last_sync);
 !   DROP INDEX public.unit_usaha_ls;
       public            postgres    false    452            h           1259    269205    unit_usaha_lu    INDEX     K   CREATE INDEX unit_usaha_lu ON public.unit_usaha USING btree (last_update);
 !   DROP INDEX public.unit_usaha_lu;
       public            postgres    false    452            i           1259    269206    unit_usaha_pk    INDEX     T   CREATE UNIQUE INDEX unit_usaha_pk ON public.unit_usaha USING btree (unit_usaha_id);
 !   DROP INDEX public.unit_usaha_pk;
       public            postgres    false    452            j           1259    269207    unit_usaha_sekolah_fk    INDEX     R   CREATE INDEX unit_usaha_sekolah_fk ON public.unit_usaha USING btree (sekolah_id);
 )   DROP INDEX public.unit_usaha_sekolah_fk;
       public            postgres    false    452            o           1259    269212    unit_usaha_sumber_dana_fk    INDEX     d   CREATE INDEX unit_usaha_sumber_dana_fk ON public.unit_usaha_kerjasama USING btree (sumber_dana_id);
 -   DROP INDEX public.unit_usaha_sumber_dana_fk;
       public            postgres    false    453            p           1259    269213    versi_db_pk    INDEX     K   CREATE UNIQUE INDEX versi_db_pk ON public.versi_db USING btree (versi_id);
    DROP INDEX public.versi_db_pk;
       public            postgres    false    455            r           1259    269215    vld_akt_pd_fk    INDEX     I   CREATE INDEX vld_akt_pd_fk ON public.vld_akt_pd USING btree (id_akt_pd);
 !   DROP INDEX public.vld_akt_pd_fk;
       public            postgres    false    456            s           1259    269216    vld_akt_pd_pk    INDEX     L   CREATE UNIQUE INDEX vld_akt_pd_pk ON public.vld_akt_pd USING btree (logid);
 !   DROP INDEX public.vld_akt_pd_pk;
       public            postgres    false    456            w           1259    269220    vld_anak_pk    INDEX     H   CREATE UNIQUE INDEX vld_anak_pk ON public.vld_anak USING btree (logid);
    DROP INDEX public.vld_anak_pk;
       public            postgres    false    458            y           1259    269222    vld_angkutan_fk    INDEX     O   CREATE INDEX vld_angkutan_fk ON public.vld_angkutan USING btree (id_angkutan);
 #   DROP INDEX public.vld_angkutan_fk;
       public            postgres    false    459            z           1259    269223    vld_angkutan_pk    INDEX     P   CREATE UNIQUE INDEX vld_angkutan_pk ON public.vld_angkutan USING btree (logid);
 #   DROP INDEX public.vld_angkutan_pk;
       public            postgres    false    459            ~           1259    269227    vld_bea_pd_pk    INDEX     L   CREATE UNIQUE INDEX vld_bea_pd_pk ON public.vld_bea_pd USING btree (logid);
 !   DROP INDEX public.vld_bea_pd_pk;
       public            postgres    false    461            �           1259    269229    vld_bea_ptk_pk    INDEX     N   CREATE UNIQUE INDEX vld_bea_ptk_pk ON public.vld_bea_ptk USING btree (logid);
 "   DROP INDEX public.vld_bea_ptk_pk;
       public            postgres    false    462            �           1259    269231    vld_buku_ptk_pk    INDEX     P   CREATE UNIQUE INDEX vld_buku_ptk_pk ON public.vld_buku_ptk USING btree (logid);
 #   DROP INDEX public.vld_buku_ptk_pk;
       public            postgres    false    463            �           1259    269233    vld_demografi_pk    INDEX     R   CREATE UNIQUE INDEX vld_demografi_pk ON public.vld_demografi USING btree (logid);
 $   DROP INDEX public.vld_demografi_pk;
       public            postgres    false    464            �           1259    269235    vld_dudi_pk    INDEX     H   CREATE UNIQUE INDEX vld_dudi_pk ON public.vld_dudi USING btree (logid);
    DROP INDEX public.vld_dudi_pk;
       public            postgres    false    465            �           1259    269237    vld_inpassing_pk    INDEX     R   CREATE UNIQUE INDEX vld_inpassing_pk ON public.vld_inpassing USING btree (logid);
 $   DROP INDEX public.vld_inpassing_pk;
       public            postgres    false    466            �           1259    269238    vld_jur_sp_errtype    INDEX     O   CREATE INDEX vld_jur_sp_errtype ON public.vld_jurusan_sp USING btree (idtype);
 &   DROP INDEX public.vld_jur_sp_errtype;
       public            postgres    false    467            �           1259    269239    vld_jurusan_sp_pk    INDEX     T   CREATE UNIQUE INDEX vld_jurusan_sp_pk ON public.vld_jurusan_sp USING btree (logid);
 %   DROP INDEX public.vld_jurusan_sp_pk;
       public            postgres    false    467            �           1259    269241    vld_karya_tulis_pk    INDEX     V   CREATE UNIQUE INDEX vld_karya_tulis_pk ON public.vld_karya_tulis USING btree (logid);
 &   DROP INDEX public.vld_karya_tulis_pk;
       public            postgres    false    468            �           1259    269243    vld_kesejahteraan_pk    INDEX     Z   CREATE UNIQUE INDEX vld_kesejahteraan_pk ON public.vld_kesejahteraan USING btree (logid);
 (   DROP INDEX public.vld_kesejahteraan_pk;
       public            postgres    false    469            �           1259    269244    vld_mou_errtype    INDEX     E   CREATE INDEX vld_mou_errtype ON public.vld_mou USING btree (idtype);
 #   DROP INDEX public.vld_mou_errtype;
       public            postgres    false    470            �           1259    269245 
   vld_mou_pk    INDEX     F   CREATE UNIQUE INDEX vld_mou_pk ON public.vld_mou USING btree (logid);
    DROP INDEX public.vld_mou_pk;
       public            postgres    false    470            �           1259    269247    vld_nilai_rapor_pk    INDEX     V   CREATE UNIQUE INDEX vld_nilai_rapor_pk ON public.vld_nilai_rapor USING btree (logid);
 &   DROP INDEX public.vld_nilai_rapor_pk;
       public            postgres    false    471            �           1259    269249    vld_nilai_test_pk    INDEX     T   CREATE UNIQUE INDEX vld_nilai_test_pk ON public.vld_nilai_test USING btree (logid);
 %   DROP INDEX public.vld_nilai_test_pk;
       public            postgres    false    472            �           1259    269251    vld_nonsekolah_pk    INDEX     T   CREATE UNIQUE INDEX vld_nonsekolah_pk ON public.vld_nonsekolah USING btree (logid);
 %   DROP INDEX public.vld_nonsekolah_pk;
       public            postgres    false    473            �           1259    269253    vld_pd_long_pk    INDEX     N   CREATE UNIQUE INDEX vld_pd_long_pk ON public.vld_pd_long USING btree (logid);
 "   DROP INDEX public.vld_pd_long_pk;
       public            postgres    false    474            �           1259    269254    vld_pembelajaran_errtype    INDEX     W   CREATE INDEX vld_pembelajaran_errtype ON public.vld_pembelajaran USING btree (idtype);
 ,   DROP INDEX public.vld_pembelajaran_errtype;
       public            postgres    false    475            �           1259    269255    vld_pembelajaran_pk    INDEX     X   CREATE UNIQUE INDEX vld_pembelajaran_pk ON public.vld_pembelajaran USING btree (logid);
 '   DROP INDEX public.vld_pembelajaran_pk;
       public            postgres    false    475            �           1259    269257    vld_penghargaan_pk    INDEX     V   CREATE UNIQUE INDEX vld_penghargaan_pk ON public.vld_penghargaan USING btree (logid);
 &   DROP INDEX public.vld_penghargaan_pk;
       public            postgres    false    476            �           1259    269259    vld_peserta_didik_pk    INDEX     Z   CREATE UNIQUE INDEX vld_peserta_didik_pk ON public.vld_peserta_didik USING btree (logid);
 (   DROP INDEX public.vld_peserta_didik_pk;
       public            postgres    false    477            |           1259    269225    vld_prasarana_pk    INDEX     Q   CREATE UNIQUE INDEX vld_prasarana_pk ON public.vld_bangunan USING btree (logid);
 $   DROP INDEX public.vld_prasarana_pk;
       public            postgres    false    460            �           1259    269261    vld_prestasi_pk    INDEX     P   CREATE UNIQUE INDEX vld_prestasi_pk ON public.vld_prestasi USING btree (logid);
 #   DROP INDEX public.vld_prestasi_pk;
       public            postgres    false    478            �           1259    269263 
   vld_ptk_pk    INDEX     F   CREATE UNIQUE INDEX vld_ptk_pk ON public.vld_ptk USING btree (logid);
    DROP INDEX public.vld_ptk_pk;
       public            postgres    false    479            �           1259    269264    vld_ptk_terdaftar_errtype    INDEX     Y   CREATE INDEX vld_ptk_terdaftar_errtype ON public.vld_ptk_terdaftar USING btree (idtype);
 -   DROP INDEX public.vld_ptk_terdaftar_errtype;
       public            postgres    false    480            �           1259    269265    vld_ptk_terdaftar_pk    INDEX     Z   CREATE UNIQUE INDEX vld_ptk_terdaftar_pk ON public.vld_ptk_terdaftar USING btree (logid);
 (   DROP INDEX public.vld_ptk_terdaftar_pk;
       public            postgres    false    480            �           1259    269266    vld_reg_pd_errtype    INDEX     K   CREATE INDEX vld_reg_pd_errtype ON public.vld_reg_pd USING btree (idtype);
 &   DROP INDEX public.vld_reg_pd_errtype;
       public            postgres    false    481            �           1259    269267    vld_reg_pd_pk    INDEX     L   CREATE UNIQUE INDEX vld_reg_pd_pk ON public.vld_reg_pd USING btree (logid);
 !   DROP INDEX public.vld_reg_pd_pk;
       public            postgres    false    481            �           1259    269269    vld_rombel_pk    INDEX     L   CREATE UNIQUE INDEX vld_rombel_pk ON public.vld_rombel USING btree (logid);
 !   DROP INDEX public.vld_rombel_pk;
       public            postgres    false    482            �           1259    269271    vld_rwy_fungsional_pk    INDEX     \   CREATE UNIQUE INDEX vld_rwy_fungsional_pk ON public.vld_rwy_fungsional USING btree (logid);
 )   DROP INDEX public.vld_rwy_fungsional_pk;
       public            postgres    false    483            �           1259    269273    vld_rwy_kepangkatan_pk    INDEX     ^   CREATE UNIQUE INDEX vld_rwy_kepangkatan_pk ON public.vld_rwy_kepangkatan USING btree (logid);
 *   DROP INDEX public.vld_rwy_kepangkatan_pk;
       public            postgres    false    484            �           1259    269274    vld_rwy_kerja_errtype    INDEX     Q   CREATE INDEX vld_rwy_kerja_errtype ON public.vld_rwy_kerja USING btree (idtype);
 )   DROP INDEX public.vld_rwy_kerja_errtype;
       public            postgres    false    485            �           1259    269275    vld_rwy_kerja_pk    INDEX     R   CREATE UNIQUE INDEX vld_rwy_kerja_pk ON public.vld_rwy_kerja USING btree (logid);
 $   DROP INDEX public.vld_rwy_kerja_pk;
       public            postgres    false    485            �           1259    269277    vld_rwy_pend_formal_pk    INDEX     ^   CREATE UNIQUE INDEX vld_rwy_pend_formal_pk ON public.vld_rwy_pend_formal USING btree (logid);
 *   DROP INDEX public.vld_rwy_pend_formal_pk;
       public            postgres    false    486            �           1259    269279    vld_rwy_sertifikasi_pk    INDEX     ^   CREATE UNIQUE INDEX vld_rwy_sertifikasi_pk ON public.vld_rwy_sertifikasi USING btree (logid);
 *   DROP INDEX public.vld_rwy_sertifikasi_pk;
       public            postgres    false    487            �           1259    269281    vld_rwy_struktural_pk    INDEX     \   CREATE UNIQUE INDEX vld_rwy_struktural_pk ON public.vld_rwy_struktural USING btree (logid);
 )   DROP INDEX public.vld_rwy_struktural_pk;
       public            postgres    false    488            u           1259    269218    vld_sarana_pk    INDEX     J   CREATE UNIQUE INDEX vld_sarana_pk ON public.vld_alat USING btree (logid);
 !   DROP INDEX public.vld_sarana_pk;
       public            postgres    false    457            �           1259    269283    vld_sekolah_pk    INDEX     N   CREATE UNIQUE INDEX vld_sekolah_pk ON public.vld_sekolah USING btree (logid);
 "   DROP INDEX public.vld_sekolah_pk;
       public            postgres    false    489            �           1259    269285    vld_tanah_fk    INDEX     F   CREATE INDEX vld_tanah_fk ON public.vld_tanah USING btree (id_tanah);
     DROP INDEX public.vld_tanah_fk;
       public            postgres    false    490            �           1259    269286    vld_tanah_pk    INDEX     J   CREATE UNIQUE INDEX vld_tanah_pk ON public.vld_tanah USING btree (logid);
     DROP INDEX public.vld_tanah_pk;
       public            postgres    false    490            �           1259    269288    vld_tugas_tambahan_pk    INDEX     \   CREATE UNIQUE INDEX vld_tugas_tambahan_pk ON public.vld_tugas_tambahan USING btree (logid);
 )   DROP INDEX public.vld_tugas_tambahan_pk;
       public            postgres    false    491            �           1259    269289    vld_tunj_errtype    INDEX     L   CREATE INDEX vld_tunj_errtype ON public.vld_tunjangan USING btree (idtype);
 $   DROP INDEX public.vld_tunj_errtype;
       public            postgres    false    492            �           1259    269290    vld_tunjangan_pk    INDEX     R   CREATE UNIQUE INDEX vld_tunjangan_pk ON public.vld_tunjangan USING btree (logid);
 $   DROP INDEX public.vld_tunjangan_pk;
       public            postgres    false    492            �           1259    269291    vld_un_errtype    INDEX     C   CREATE INDEX vld_un_errtype ON public.vld_un USING btree (idtype);
 "   DROP INDEX public.vld_un_errtype;
       public            postgres    false    493            �           1259    269292 	   vld_un_pk    INDEX     D   CREATE UNIQUE INDEX vld_un_pk ON public.vld_un USING btree (logid);
    DROP INDEX public.vld_un_pk;
       public            postgres    false    493            �           1259    269293    vld_yayasan_errtype    INDEX     M   CREATE INDEX vld_yayasan_errtype ON public.vld_yayasan USING btree (idtype);
 '   DROP INDEX public.vld_yayasan_errtype;
       public            postgres    false    494            �           1259    269294    vld_yayasan_pk    INDEX     N   CREATE UNIQUE INDEX vld_yayasan_pk ON public.vld_yayasan USING btree (logid);
 "   DROP INDEX public.vld_yayasan_pk;
       public            postgres    false    494                       1259    269108    wali_kelas_fk    INDEX     M   CREATE INDEX wali_kelas_fk ON public.rombongan_belajar USING btree (ptk_id);
 !   DROP INDEX public.wali_kelas_fk;
       public            postgres    false    428            �           1259    269296 
   yayasan_pk    INDEX     K   CREATE UNIQUE INDEX yayasan_pk ON public.yayasan USING btree (yayasan_id);
    DROP INDEX public.yayasan_pk;
       public            postgres    false    495           