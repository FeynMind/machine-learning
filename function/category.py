from typing import Dict, List
import json

data = {'jaringan_hewan': {
            'learning_path': {
                'Jaringan_Hewan': {
                    'subtopics': ['pengertian_jaringan', 'ciri_umum_jaringan', 'klasifikasi_jaringan'],
                    'next_topic': 'Jaringan_Epitel'
                },
                'Jaringan_Epitel': {
                    'subtopics': ['fungsi_epitel', 'jenis_epitel', 'lokasi_epitel'],
                    'next_topic': 'Jaringan_Otot'
                },
                'Jaringan_Otot': {
                    'subtopics': ['fungsi_otot', 'jenis_otot', 'karakteristik_otot'],
                    'next_topic': 'Jaringan_Saraf'
                },
                'Jaringan_Saraf': {
                    'subtopics': ['fungsi_saraf', 'struktur_saraf', 'jenis_saraf'],
                    'next_topic': 'Jaringan_Pengikat'
                },
                'Jaringan_Pengikat': {
                    'subtopics': ['fungsi_pengikat', 'jenis_pengikat', 'komponen_pengikat'],
                    'next_topic': 'Peranan_Jaringan_Hewan'
                },
                'Peranan_Jaringan_Hewan': {
                    'subtopics': ['peranan_biologi', 'aplikasi_medis', 'hubungan_dengan_organ'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_jaringan': ['pengertian', 'definisi', 'struktur', 'jaringan_hewan'],
                'ciri_umum_jaringan': ['ciri', 'karakteristik', 'struktur_umum'],
                'klasifikasi_jaringan': ['klasifikasi', 'jenis', 'epitel', 'otot', 'saraf', 'pengikat'],
                'fungsi_epitel': ['epitel', 'pelindung', 'absorpsi', 'sekresi'],
                'jenis_epitel': ['sederhana', 'berlapis', 'kubus', 'silindris', 'pipih'],
                'lokasi_epitel': ['kulit', 'saluran_pencernaan', 'pembuluh_darah'],
                'fungsi_otot': ['kontraksi', 'gerak', 'dukungan'],
                'jenis_otot': ['rangka', 'jantung', 'polos'],
                'karakteristik_otot': ['kontraksi', 'relaksasi', 'serabut_otot'],
                'fungsi_saraf': ['transmisi', 'informasi', 'reaksi'],
                'struktur_saraf': ['neuron', 'dendrit', 'akson', 'sinaps'],
                'jenis_saraf': ['sensorik', 'motorik', 'interneuron'],
                'fungsi_pengikat': ['penghubung', 'dukungan', 'perlindungan'],
                'jenis_pengikat': ['tulang', 'kartilago', 'darah', 'lemak'],
                'komponen_pengikat': ['serat_kolagen', 'elastin', 'matrix'],
                'peranan_biologi': ['pertumbuhan', 'regenerasi', 'homeostasis'],
                'aplikasi_medis': ['terapi', 'transplantasi', 'penyembuhan'],
                'hubungan_dengan_organ': ['organ', 'sistem_tubuh', 'fungsi']
            }
        },

        'jaringan_tumbuhan': {
            'learning_path': {
                'Jaringan_Tumbuhan': {
                    'subtopics': ['pengertian_jaringan', 'klasifikasi_jaringan', 'fungsi_umum_jaringan'],
                    'next_topic': 'Jaringan_Meristem'
                },
                'Jaringan_Meristem': {
                    'subtopics': ['definisi_meristem', 'jenis_meristem', 'fungsi_meristem'],
                    'next_topic': 'Jaringan_Permanen'
                },
                'Jaringan_Permanen': {
                    'subtopics': ['definisi_permanen', 'jenis_permanen', 'fungsi_permanen'],
                    'next_topic': 'Jaringan_Dermal'
                },
                'Jaringan_Dermal': {
                    'subtopics': ['fungsi_dermal', 'struktur_dermal', 'lokasi_dermal'],
                    'next_topic': 'Jaringan_Ground'
                },
                'Jaringan_Ground': {
                    'subtopics': ['parenkim', 'kolenkim', 'sklerenkim'],
                    'next_topic': 'Jaringan_Vaskular'
                },
                'Jaringan_Vaskular': {
                    'subtopics': ['xilem', 'floem', 'fungsi_vaskular'],
                    'next_topic': 'Peranan_Jaringan_Tumbuhan'
                },
                'Peranan_Jaringan_Tumbuhan': {
                    'subtopics': ['peranan_ekologi', 'peranan_biologi', 'aplikasi_ekonomi'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_jaringan': ['pengertian', 'definisi', 'struktur', 'jaringan_tumbuhan'],
                'klasifikasi_jaringan': ['klasifikasi', 'jenis', 'meristem', 'permanen'],
                'fungsi_umum_jaringan': ['fungsi', 'dukungan', 'pertumbuhan'],
                'definisi_meristem': ['meristem', 'aktif', 'pembelahan'],
                'jenis_meristem': ['apikal', 'interkalar', 'lateral'],
                'fungsi_meristem': ['pertumbuhan', 'primer', 'sekunder'],
                'definisi_permanen': ['permanen', 'matang', 'fungsional'],
                'jenis_permanen': ['dermal', 'ground', 'vaskular'],
                'fungsi_permanen': ['dukungan', 'transportasi', 'proteksi'],
                'fungsi_dermal': ['pelindung', 'epidermis', 'kutikula'],
                'struktur_dermal': ['epidermis', 'stomata', 'trikoma'],
                'lokasi_dermal': ['permukaan_daun', 'akar', 'batang'],
                'parenkim': ['jaringan', 'metabolisme', 'simpanan'],
                'kolenkim': ['dukungan', 'fleksibilitas', 'struktur'],
                'sklerenkim': ['kekuatan', 'serat', 'sklereid'],
                'xilem': ['air', 'transportasi', 'mineral'],
                'floem': ['nutrisi', 'gula', 'transportasi'],
                'fungsi_vaskular': ['transportasi', 'dukungan', 'sistem'],
                'peranan_ekologi': ['lingkungan', 'ekosistem', 'konservasi'],
                'peranan_biologi': ['pertumbuhan', 'reproduksi', 'metabolisme'],
                'aplikasi_ekonomi': ['industri', 'pangan', 'kayu']
            }
        },
        'sistem_pencernaan_pada_manusia': {
            'learning_path': {
                'Sistem_Pencernaan': {
                    'subtopics': ['pengertian_sistem_pencernaan', 'organ_pencernaan', 'proses_pencernaan'],
                    'next_topic': 'Enzim_Pencernaan'
                },
                'Enzim_Pencernaan': {
                    'subtopics': ['enzim_amylase', 'enzim_pepsin', 'enzim_lipase'],
                    'next_topic': 'Gangguan_Pencernaan'
                },
                'Gangguan_Pencernaan': {
                    'subtopics': ['mag', 'diare', 'konstipasi'],
                    'next_topic': 'Pencegahan_Penyakit_Pencernaan'
                },
                'Pencegahan_Penyakit_Pencernaan': {
                    'subtopics': ['nutrisi_seimbang', 'pola_makan', 'kebersihan_makanan'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_sistem_pencernaan': ['makanan', 'nutrisi', 'organ_pencernaan'],
                'organ_pencernaan': ['mulut', 'kerongkongan', 'lambung', 'usus', 'rektum'],
                'proses_pencernaan': ['mekanik', 'kimiawi', 'absorbsi', 'eliminasi'],
                'enzim_amylase': ['amilase', 'karbohidrat', 'mulut', 'reaksi_enzim'],
                'enzim_pepsin': ['pepsin', 'protein', 'lambung', 'enzim_aktif'],
                'enzim_lipase': ['lipase', 'lemak', 'pankreas', 'reaksi_pencernaan'],
                'mag': ['asam_lambung', 'nyeri', 'lambung', 'peradangan'],
                'diare': ['feses', 'dehidrasi', 'infeksi', 'gangguan'],
                'konstipasi': ['sembelit', 'serat', 'feses', 'usus_besar'],
                'nutrisi_seimbang': ['protein', 'karbohidrat', 'lemak', 'vitamin', 'mineral'],
                'pola_makan': ['jadwal_makan', 'porsi_makan', 'gizi', 'keseimbangan'],
                'kebersihan_makanan': ['higienis', 'kontaminasi', 'kuman', 'kesehatan']
            }
        },
        'keanekaragaman_hayati': {
            'learning_path': {
                'Keanekaragaman_Hayati': {
                    'subtopics': ['pengertian_keanekaragaman', 'tingkatan_keanekaragaman', 'pentingnya_keanekaragaman'],
                    'next_topic': 'Tingkatan_Keanekaragaman'
                },
                'Tingkatan_Keanekaragaman': {
                    'subtopics': ['keanekaragaman_genetik', 'keanekaragaman_spesies', 'keanekaragaman_ekosistem'],
                    'next_topic': 'Faktor_Penyebab'
                },
                'Faktor_Penyebab': {
                    'subtopics': ['faktor_genetik', 'faktor_lingkungan', 'interaksi_antar_makhluk_hidup'],
                    'next_topic': 'Manfaat_Keanekaragaman'
                },
                'Manfaat_Keanekaragaman': {
                    'subtopics': ['manfaat_ekologi', 'manfaat_ekonomi', 'manfaat_sosial'],
                    'next_topic': 'Ancaman_Keanekaragaman'
                },
                'Ancaman_Keanekaragaman': {
                    'subtopics': ['kerusakan_habitat', 'eksploitasi_berlebihan', 'perubahan_iklim'],
                    'next_topic': 'Upaya_Pelestarian'
                },
                'Upaya_Pelestarian': {
                    'subtopics': ['konservasi_in_situ', 'konservasi_ex_situ', 'pendidikan_ekologi'],
                    'next_topic': 'Hukum_dan_Regulasi'
                },
                'Hukum_dan_Regulasi': {
                    'subtopics': ['undang_undang', 'konvensi_internasional', 'peraturan_lokal'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_keanekaragaman': ['pengertian', 'definisi', 'variasi', 'makhluk_hidup'],
                'tingkatan_keanekaragaman': ['genetik', 'spesies', 'ekosistem'],
                'pentingnya_keanekaragaman': ['penting', 'fungsi', 'keberlanjutan'],
                'keanekaragaman_genetik': ['genetik', 'DNA', 'variasi', 'adaptasi'],
                'keanekaragaman_spesies': ['spesies', 'jenis', 'flora', 'fauna'],
                'keanekaragaman_ekosistem': ['ekosistem', 'habitat', 'lingkungan', 'interaksi'],
                'faktor_genetik': ['genetik', 'keturunan', 'variasi'],
                'faktor_lingkungan': ['lingkungan', 'habitat', 'iklim'],
                'interaksi_antar_makhluk_hidup': ['interaksi', 'simbiosis', 'kompetisi', 'predasi'],
                'manfaat_ekologi': ['ekologi', 'ekosistem', 'stabilitas', 'fungsi'],
                'manfaat_ekonomi': ['ekonomi', 'sumber_daya', 'industri', 'pariwisata'],
                'manfaat_sosial': ['sosial', 'budaya', 'pendidikan', 'kesejahteraan'],
                'kerusakan_habitat': ['deforestasi', 'urbanisasi', 'pertambangan'],
                'eksploitasi_berlebihan': ['eksploitasi', 'penangkapan_ikan', 'perburuan'],
                'perubahan_iklim': ['iklim', 'pemanasan_global', 'kerusakan_lingkungan'],
                'konservasi_in_situ': ['in_situ', 'taman_nasional', 'habitat_asli'],
                'konservasi_ex_situ': ['ex_situ', 'kebun_binatang', 'kebun_botani'],
                'pendidikan_ekologi': ['pendidikan', 'kesadaran', 'edukasi'],
                'undang_undang': ['peraturan', 'perlindungan', 'UU', 'hukum'],
                'konvensi_internasional': ['konvensi', 'internasional', 'CITES', 'CBD'],
                'peraturan_lokal': ['lokal', 'regional', 'perda']
            }
        },
        'materi_genetik': {
            'learning_path': {
                'Materi_Genetik': {
                    'subtopics': ['pengertian_materi_genetik', 'sejarah_penemuan_materi_genetik', 'fungsi_materi_genetik'],
                    'next_topic': 'Struktur_DNA_dan_RNA'
                },
                'Struktur_DNA_dan_RNA': {
                    'subtopics': ['struktur_dna', 'struktur_rna', 'perbedaan_dna_rna'],
                    'next_topic': 'Replikasi_DNA'
                },
                'Replikasi_DNA': {
                    'subtopics': ['proses_replikasi', 'enzim_terlibat', 'signifikansi_replikasi'],
                    'next_topic': 'Ekspresi_Gen'
                },
                'Ekspresi_Gen': {
                    'subtopics': ['transkripsi', 'translasi', 'kode_genetik'],
                    'next_topic': 'Mutasi_Genetik'
                },
                'Mutasi_Genetik': {
                    'subtopics': ['jenis_mutasi', 'penyebab_mutasi', 'dampak_mutasi'],
                    'next_topic': 'Aplikasi_Materi_Genetik'
                },
                'Aplikasi_Materi_Genetik': {
                    'subtopics': ['bioteknologi', 'rekayasa_genetik', 'terapi_gen'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_materi_genetik': ['materi_genetik', 'DNA', 'RNA', 'gen', 'hereditas'],
                'sejarah_penemuan_materi_genetik': ['sejarah', 'penemuan', 'watson', 'crick', 'rosalind'],
                'fungsi_materi_genetik': ['fungsi', 'kode_genetik', 'informasi_genetik'],
                'struktur_dna': ['struktur', 'nukleotida', 'gula', 'fosfat', 'basa_nitrogen'],
                'struktur_rna': ['rna', 'urasil', 'nukleotida', 'gula_ribosa'],
                'perbedaan_dna_rna': ['perbedaan', 'DNA', 'RNA', 'struktur', 'fungsi'],
                'proses_replikasi': ['replikasi', 'DNA', 'proses', 'semi-konservatif'],
                'enzim_terlibat': ['enzim', 'DNA_polimerase', 'helicase', 'ligase'],
                'signifikansi_replikasi': ['signifikansi', 'replikasi', 'keberlanjutan', 'sel'],
                'transkripsi': ['transkripsi', 'mRNA', 'template', 'promotor'],
                'translasi': ['translasi', 'ribosom', 'tRNA', 'protein'],
                'kode_genetik': ['kode_genetik', 'triplet', 'start_codon', 'stop_codon'],
                'jenis_mutasi': ['mutasi', 'point_mutation', 'frameshift', 'substitusi'],
                'penyebab_mutasi': ['penyebab', 'radiasi', 'bahan_kimia', 'kesalahan_replikasi'],
                'dampak_mutasi': ['dampak', 'penyakit', 'evolusi', 'abnormalitas'],
                'bioteknologi': ['bioteknologi', 'genetika', 'rekayasa', 'teknologi'],
                'rekayasa_genetik': ['rekayasa_genetik', 'CRISPR', 'kloning', 'modifikasi_genetik'],
                'terapi_gen': ['terapi_gen', 'pengobatan', 'genetik', 'penyakit']
            }
        },
        'metabolisme': {
            'learning_path': {
                'Metabolisme': {
                    'subtopics': ['pengertian_metabolisme', 'jenis_metabolisme', 'fungsi_metabolisme'],
                    'next_topic': 'Katabolisme'
                },
                'Katabolisme': {
                    'subtopics': ['pengertian_katabolisme', 'respirasi_aerob', 'respirasi_anaerob'],
                    'next_topic': 'Anabolisme'
                },
                'Anabolisme': {
                    'subtopics': ['pengertian_anabolisme', 'fotosintesis', 'kemosintesis'],
                    'next_topic': 'Faktor_Pengaruh'
                },
                'Faktor_Pengaruh': {
                    'subtopics': ['enzim', 'suhu', 'pH', 'konsentrasi_substrat'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_metabolisme': ['metabolisme', 'reaksi', 'biokimia', 'energi'],
                'jenis_metabolisme': ['katabolisme', 'anabolisme', 'reaksi'],
                'fungsi_metabolisme': ['fungsi', 'energi', 'sintesis', 'regulasi'],
                'respirasi_aerob': ['aerob', 'oksigen', 'mitokondria'],
                'respirasi_anaerob': ['anaerob', 'fermentasi', 'etanol', 'laktat'],
                'fotosintesis': ['klorofil', 'cahaya', 'reaksi_terang', 'reaksi_gelap'],
                'enzim': ['katalis', 'protein', 'aktivitas']
            }
        },
        'sistem_pernafasan': {
            'learning_path': {
                'Sistem_Pernapasan': {
                    'subtopics': ['pengertian_pernapasan', 'organ_pernapasan', 'mekanisme_pernapasan'],
                    'next_topic': 'Gangguan_Pernapasan'
                },
                'Gangguan_Pernapasan': {
                    'subtopics': ['asma', 'bronkitis', 'pneumonia', 'emfisema'],
                    'next_topic': 'Pencegahan_Perawatan'
                },
                'Pencegahan_Perawatan': {
                    'subtopics': ['kesehatan_pernapasan', 'perilaku_sehat', 'pengobatan'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'organ_pernapasan': ['paru', 'trakea', 'bronkus', 'alveolus'],
                'mekanisme_pernapasan': ['inspirasi', 'ekspirasi', 'tekanan'],
                'asma': ['gangguan', 'penyempitan', 'saluran'],
                'pencegahan_perawatan': ['kesehatan', 'pengobatan', 'terapi']
            }
        },
        'mutasi': {
            'learning_path': {
                'Mutasi': {
                    'subtopics': ['pengertian_mutasi', 'jenis_mutasi', 'dampak_mutasi'],
                    'next_topic': 'Penyebab_Mutasi'
                },
                'Penyebab_Mutasi': {
                    'subtopics': ['radiasi', 'bahan_kimia', 'kesalahan_replikasi'],
                    'next_topic': 'Manfaat_dan_Bahaya'
                },
                'Manfaat_dan_Bahaya': {
                    'subtopics': ['evolusi', 'penyakit_genetik', 'peningkatan_variasi'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'jenis_mutasi': ['point_mutation', 'frameshift', 'substitusi', 'deletion'],
                'penyebab_mutasi': ['radiasi', 'UV', 'kesalahan_replikasi'],
                'dampak_mutasi': ['genetik', 'evolusi', 'penyakit']
            }
        },
        'sistem_pertahanan_tubuh': {
            'learning_path': {
                'Sistem_Pertahanan_Tubuh': {
                    'subtopics': ['pengertian', 'fungsi', 'organ_pertahanan'],
                    'next_topic': 'Imunitas_Bawaan'
                },
                'Imunitas_Bawaan': {
                    'subtopics': ['kulit', 'mukosa', 'reaksi_inflamasi'],
                    'next_topic': 'Imunitas_Adaptif'
                },
                'Imunitas_Adaptif': {
                    'subtopics': ['limfosit', 'antibodi', 'memori_imun'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'organ_pertahanan': ['limpa', 'kelenjar_getah_bening', 'timus'],
                'reaksi_inflamasi': ['inflamasi', 'demam', 'peradangan'],
                'antibodi': ['imunoglobulin', 'pertahanan', 'virus']
            }
        },
        'penerapan_prinsip_reproduksi_manusia': {
            'learning_path': {
                'Prinsip_Reproduksi': {
                    'subtopics': ['konsep_dasar', 'proses_reproduksi', 'hormon_reproduksi'],
                    'next_topic': 'Penerapan_Biomedis'
                },
                'Penerapan_Biomedis': {
                    'subtopics': ['IVF', 'inseminasi_buatan', 'pencegahan_infertilitas'],
                    'next_topic': 'Etika_dan_Hukum'
                },
                'Etika_dan_Hukum': {
                    'subtopics': ['aborsi', 'bayi_tabung', 'donasi_gamet'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'hormon_reproduksi': ['testosteron', 'estrogen', 'progesteron'],
                'IVF': ['fertilisasi_invitro', 'embrio', 'pembuahan'],
                'etika_dan_hukum': ['etika', 'legalitas', 'reproduksi']
            }
        },
        'sistem_sirkulasi_manusia': {
            'learning_path': {
                'Sistem_Sirkulasi': {
                    'subtopics': ['fungsi_sirkulasi', 'organ_sirkulasi', 'komponen_darah'],
                    'next_topic': 'Gangguan_Sirkulasi'
                },
                'Gangguan_Sirkulasi': {
                    'subtopics': ['hipertensi', 'aterosklerosis', 'anemia'],
                    'next_topic': 'Pencegahan_Penyakit'
                },
                'Pencegahan_Penyakit': {
                    'subtopics': ['olahraga', 'nutrisi_sehat', 'pemeriksaan_rutin'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'fungsi_sirkulasi': ['transportasi', 'darah', 'oksigen'],
                'organ_sirkulasi': ['jantung', 'arteri', 'vena'],
                'gangguan_sirkulasi': ['penyakit', 'tekanan_darah', 'penyumbatan']
            }
        },
        'pertumbuhan_dan_perkembangan': {
            'learning_path': {
                'Pertumbuhan_dan_Perkembangan': {
                    'subtopics': ['pengertian', 'faktor_pendukung', 'proses_pertumbuhan'],
                    'next_topic': 'Perkembangan_Pada_Tumbuhan'
                },
                'Perkembangan_Pada_Tumbuhan': {
                    'subtopics': ['fase_perkecambahan', 'fase_vegetatif', 'fase_generatif'],
                    'next_topic': 'Perkembangan_Pada_Manusia'
                },
                'Perkembangan_Pada_Manusia': {
                    'subtopics': ['fase_bayi', 'fase_remaja', 'fase_dewasa'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'faktor_pendukung': ['genetik', 'lingkungan', 'nutrisi'],
                'fase_perkecambahan': ['biji', 'perkecambahan', 'tumbuhan'],
                'fase_remaja': ['pubertas', 'pertumbuhan', 'psikologi']
            }
        },
        'virus': {
            'learning_path': {
                'Virus': {
                    'subtopics': ['struktur_virus', 'jenis_virus', 'siklus_hidup_virus'],
                    'next_topic': 'Penyakit_Virus'
                },
                'Penyakit_Virus': {
                    'subtopics': ['HIV', 'flu', 'coronavirus', 'hepatitis'],
                    'next_topic': 'Peran_Virus'
                },
                'Peran_Virus': {
                    'subtopics': ['virus_dalam_bioteknologi', 'virus_dalam_ekosistem'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'struktur_virus': ['kapsid', 'genom', 'protein'],
                'siklus_hidup_virus': ['litik', 'lisogenik', 'replikasi'],
                'virus_dalam_bioteknologi': ['terapi_gen', 'vektor', 'produksi_vaksin']
            }
        },
        'perubahan_lingkungan': {
            'learning_path': {
                'Perubahan_Lingkungan': {
                    'subtopics': ['pengertian', 'jenis_perubahan', 'penyebab'],
                    'next_topic': 'Dampak_Lingkungan'
                },
                'Dampak_Lingkungan': {
                    'subtopics': ['global_warming', 'polusi', 'keanekaragaman_hayati'],
                    'next_topic': 'Upaya_Pelestarian'
                },
                'Upaya_Pelestarian': {
                    'subtopics': ['konservasi', 'teknologi_hijau', 'edukasi'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'jenis_perubahan': ['alam', 'manusia', 'ekosistem'],
                'global_warming': ['pemanasan_global', 'karbon', 'suhu'],
                'konservasi': ['pelestarian', 'flora', 'fauna']
            }
        },
        'sistem_gerak_pada_manusia': {
            'learning_path': {
                'Sistem_Gerak': {
                    'subtopics': ['pengertian_sistem_gerak', 'jenis_gerak', 'komponen_sistem_gerak'],
                    'next_topic': 'Gangguan_Sistem_Gerak'
                },
                'Gangguan_Sistem_Gerak': {
                    'subtopics': ['osteoporosis', 'artritis', 'fraktur'],
                    'next_topic': 'Pencegahan_Penyakit_Gerak'
                },
                'Pencegahan_Penyakit_Gerak': {
                    'subtopics': ['olahraga', 'nutrisi', 'pemeriksaan_rutin'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_sistem_gerak': ['tulang', 'otot', 'sendi', 'gerak'],
                'jenis_gerak': ['fleksi', 'ekstensi', 'rotasi', 'abduksi'],
                'gangguan_sistem_gerak': ['kelainan', 'penyakit', 'gangguan', 'gerak']
            }
        },
        'sistem_klasifikasi': {
            'learning_path': {
                'Sistem_Klasifikasi': {
                    'subtopics': ['pengertian_klasifikasi', 'sejarah_klasifikasi', 'prinsip_klasifikasi'],
                    'next_topic': 'Metode_Klasifikasi'
                },
                'Metode_Klasifikasi': {
                    'subtopics': ['morfologi', 'anatomi', 'filogenetik', 'molekuler'],
                    'next_topic': 'Penerapan_Klasifikasi'
                },
                'Penerapan_Klasifikasi': {
                    'subtopics': ['klasifikasi_hewan', 'klasifikasi_tumbuhan', 'klasifikasi_mikroorganisme'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_klasifikasi': ['taksonomi', 'pengelompokan', 'identifikasi'],
                'metode_klasifikasi': ['morfologi', 'genetik', 'evolusi'],
                'penerapan_klasifikasi': ['hewan', 'tumbuhan', 'organisme']
            }
        },
        'sistem_koordinasi': {
            'learning_path': {
                'Sistem_Koordinasi': {
                    'subtopics': ['pengertian_sistem_koordinasi', 'organ_sistem_koordinasi', 'fungsi_sistem_koordinasi'],
                    'next_topic': 'Sistem_Saraf'
                },
                'Sistem_Saraf': {
                    'subtopics': ['sistem_saraf_pusat', 'sistem_saraf_tepi', 'refleks'],
                    'next_topic': 'Sistem_Endokrin'
                },
                'Sistem_Endokrin': {
                    'subtopics': ['kelenjar_endokrin', 'hormon', 'gangguan_hormon'],
                    'next_topic': None
                }
            },
            'subtopic_keywords': {
                'pengertian_sistem_koordinasi': ['koordinasi', 'saraf', 'endokrin'],
                'sistem_saraf': ['otak', 'saraf', 'refleks', 'fungsi'],
                'sistem_endokrin': ['hormon', 'kelenjar', 'fungsi_hormon']
            }
        },
        'bakteri': {
          'learning_path': {
              'Bakteri': {
                  'subtopics': ['ciri_umum', 'klasifikasi_bakteri', 'reproduksi_bakteri', 'peran_bakteri'],
                  'next_topic': 'Struktur_Bakteri'
              },
              'Struktur_Bakteri': {
                  'subtopics': ['dinding_sel', 'sitoplasma', 'flagela', 'plasmid'],
                  'next_topic': 'Metabolisme_Bakteri'
              },
              'Metabolisme_Bakteri': {
                  'subtopics': ['autotrof', 'heterotrof', 'aerob', 'anaerob'],
                  'next_topic': 'Aplikasi_Bakteri'
              },
              'Aplikasi_Bakteri': {
                  'subtopics': ['industri', 'kedokteran', 'lingkungan', 'bioteknologi'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'ciri_umum': ['karakteristik', 'prokariotik', 'bakteri', 'mikroorganisme'],
              'klasifikasi_bakteri': ['taksonomi', 'gram-positif', 'gram-negatif', 'domain', 'prokariota'],
              'reproduksi_bakteri': ['aseksual', 'pembelahan_biner', 'konjugasi', 'transformasi'],
              'peran_bakteri': ['patogen', 'dekomposer', 'simbiotik', 'antibiotik'],
              'dinding_sel': ['peptidoglikan', 'struktur', 'lapisan'],
              'sitoplasma': ['cairan', 'organel', 'materi_genetik'],
              'flagela': ['gerak', 'struktur', 'motilitas'],
              'plasmid': ['DNA', 'ekstra_kromosomal', 'gen_resistensi'],
              'autotrof': ['kemosintesis', 'fotosintesis', 'bakteri_autotrof'],
              'heterotrof': ['konsumsi_organik', 'saprofit', 'parasit'],
              'aerob': ['oksigen', 'respirasi_aerobik'],
              'anaerob': ['tanpa_oksigen', 'fermentasi', 'bakteri_anaerobik'],
              'industri': ['pembuatan_keju', 'fermentasi', 'etanol'],
              'kedokteran': ['antibiotik', 'probiotik', 'vaksin'],
              'lingkungan': ['pengolahan_limbah', 'bioremediasi', 'siklus_nitrogen'],
              'bioteknologi': ['rekayasa_genetika', 'produksi_enzim', 'DNA_rekombinan']
          }
        },
        'bioproses': {
          'learning_path': {
              'Bioproses': {
                  'subtopics': ['definisi', 'prinsip_bioproses', 'mikroorganisme', 'enzim'],
                  'next_topic': 'Proses_Bioproses'
              },
              'Proses_Bioproses': {
                  'subtopics': ['fermentasi', 'reaksi_enzim', 'bioreaktor', 'skala_industri'],
                  'next_topic': 'Aplikasi_Bioproses'
              },
              'Aplikasi_Bioproses': {
                  'subtopics': ['industri_pangan', 'farmasi', 'energi_bio', 'bioplastik'],
                  'next_topic': 'Keuntungan_Bioproses'
              },
              'Keuntungan_Bioproses': {
                  'subtopics': ['ramah_lingkungan', 'efisiensi', 'biodegradable', 'ekonomi'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['pengertian', 'proses_biologi', 'teknologi'],
              'prinsip_bioproses': ['reaksi_biokimia', 'sistem_enzimatik', 'optimasi'],
              'mikroorganisme': ['bakteri', 'jamur', 'ragi'],
              'enzim': ['katalis', 'reaksi_biokimia', 'efisiensi'],
              'fermentasi': ['reaksi', 'produksi', 'produk'],
              'reaksi_enzim': ['biokatalis', 'enzimatik', 'kinetika'],
              'bioreaktor': ['alat', 'kontrol', 'skala'],
              'skala_industri': ['massal', 'produksi', 'komersial'],
              'industri_pangan': ['yoghurt', 'tempe', 'roti'],
              'farmasi': ['antibiotik', 'hormon', 'vaksin'],
              'energi_bio': ['bioetanol', 'biogas', 'biodiesel'],
              'bioplastik': ['polimer', 'ramah_lingkungan', 'plastik_bio'],
              'ramah_lingkungan': ['sustainable', 'ekologi', 'aman'],
              'efisiensi': ['hemat', 'waktu', 'energi'],
              'biodegradable': ['terurai', 'alami', 'ramah_lingkungan'],
              'ekonomi': ['efisiensi_biaya', 'pengurangan_biaya']
          }
        },
        'bioteknologi': {
          'learning_path': {
              'Bioteknologi': {
                  'subtopics': ['definisi', 'jenis_bioteknologi', 'teknologi_dasar', 'penerapan'],
                  'next_topic': 'Bioteknologi_Klasik'
              },
              'Bioteknologi_Klasik': {
                  'subtopics': ['fermentasi', 'produksi_pangan', 'antibiotik', 'biogas'],
                  'next_topic': 'Bioteknologi_Modern'
              },
              'Bioteknologi_Modern': {
                  'subtopics': ['rekayasa_genetika', 'DNA_rekombinan', 'sel_induk', 'terapi_gen'],
                  'next_topic': 'Aplikasi_Bioteknologi'
              },
              'Aplikasi_Bioteknologi': {
                  'subtopics': ['pangan', 'kesehatan', 'industri', 'lingkungan'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['pengertian', 'inovasi', 'teknologi_biologi'],
              'jenis_bioteknologi': ['klasik', 'modern', 'bioproses'],
              'teknologi_dasar': ['enzim', 'DNA', 'mikroorganisme'],
              'penerapan': ['praktis', 'terapan', 'masyarakat'],
              'fermentasi': ['proses', 'enzimatik', 'hasil'],
              'produksi_pangan': ['roti', 'yoghurt', 'minuman_fermentasi'],
              'antibiotik': ['penisilin', 'obat', 'produksi_bioteknologi'],
              'biogas': ['energi', 'alternatif', 'pengelolaan_limbah'],
              'rekayasa_genetika': ['DNA', 'gen', 'transgenik'],
              'DNA_rekombinan': ['teknologi', 'gen', 'ekspresi'],
              'sel_induk': ['potensi', 'terapi', 'organ'],
              'terapi_gen': ['penyakit', 'pengobatan', 'genetik'],
              'pangan': ['produksi_makanan', 'pertanian', 'bioteknologi_pangan'],
              'kesehatan': ['penyembuhan', 'vaksin', 'diagnostik'],
              'industri': ['produksi', 'teknologi', 'masal'],
              'lingkungan': ['konservasi', 'bioremediasi', 'pengelolaan']
          }
        },
        'ekosistem': {
          'learning_path': {
              'Ekosistem': {
                  'subtopics': ['definisi', 'komponen_ekosistem', 'jenis_ekosistem', 'interaksi'],
                  'next_topic': 'Dinamika_Ekosistem'
              },
              'Dinamika_Ekosistem': {
                  'subtopics': ['rantai_makanan', 'jaring_jaring_makanan', 'piramida_ekologi', 'siklus_biogeokimia'],
                  'next_topic': 'Keanekaragaman_Hayati'
              },
              'Keanekaragaman_Hayati': {
                  'subtopics': ['tingkat_genetik', 'tingkat_spesies', 'tingkat_ekosistem', 'ancaman'],
                  'next_topic': 'Konservasi_Ekosistem'
              },
              'Konservasi_Ekosistem': {
                  'subtopics': ['teknik_konservasi', 'rekayasa_habitat', 'hukum', 'pendidikan'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['ekologi', 'interaksi', 'lingkungan'],
              'komponen_ekosistem': ['biotik', 'abiotik', 'interaksi'],
              'jenis_ekosistem': ['hutan', 'air', 'gurun'],
              'interaksi': ['predasi', 'kompetisi', 'simbiotik'],
              'rantai_makanan': ['produsen', 'konsumen', 'pengurai'],
              'jaring_jaring_makanan': ['hubungan', 'ekosistem', 'interaksi'],
              'piramida_ekologi': ['energi', 'tropik', 'visualisasi'],
              'siklus_biogeokimia': ['karbon', 'air', 'nitrogen'],
              'tingkat_genetik': ['keragaman', 'populasi', 'gen'],
              'tingkat_spesies': ['jenis', 'keanekaragaman', 'biodiversitas'],
              'tingkat_ekosistem': ['macam', 'habitat', 'konsep'],
              'ancaman': ['punah', 'habitat_hilang', 'eksploitasi'],
              'teknik_konservasi': ['in_situ', 'ex_situ', 'perlindungan'],
              'rekayasa_habitat': ['pembuatan', 'peningkatan', 'sumber_daya'],
              'hukum': ['aturan', 'perlindungan', 'keberlanjutan'],
              'pendidikan': ['sosialisasi', 'kesadaran', 'pembelajaran']
          }
        },
        'sel': {
          'learning_path': {
              'Sel': {
                  'subtopics': ['definisi', 'teori_sel', 'jenis_sel', 'struktur_sel'],
                  'next_topic': 'Struktur_Sel'
              },
              'Struktur_Sel': {
                  'subtopics': ['membran_sel', 'inti_sel', 'sitoplasma', 'organel'],
                  'next_topic': 'Fungsi_Sel'
              },
              'Fungsi_Sel': {
                  'subtopics': ['metabolisme', 'reproduksi', 'pertahanan', 'homeostasis'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['unit_dasar', 'kehidupan', 'makhluk_hidup'],
              'teori_sel': ['penemu', 'sejarah', 'dasar'],
              'jenis_sel': ['prokariotik', 'eukariotik', 'perbedaan'],
              'struktur_sel': ['komponen', 'morfologi', 'biologi'],
              'membran_sel': ['struktur', 'fungsi', 'transportasi'],
              'inti_sel': ['nukleus', 'materi_genetik', 'kendali'],
              'sitoplasma': ['cairan', 'organel', 'reaksi'],
              'organel': ['fungsi', 'tipe', 'sistem'],
              'metabolisme': ['energi', 'reaksi', 'proses'],
              'reproduksi': ['mitosis', 'meiosis', 'pertumbuhan'],
              'pertahanan': ['respon', 'imunitas', 'adaptasi'],
              'homeostasis': ['keseimbangan', 'regulasi', 'fungsi_sel']
          }
        },
        'evolusi': {
          'learning_path': {
              'Evolusi': {
                  'subtopics': ['definisi', 'teori_evolusi', 'mekanisme_evolusi', 'bukti_evolusi'],
                  'next_topic': 'Proses_Evolusi'
              },
              'Proses_Evolusi': {
                  'subtopics': ['mutasi', 'seleksi_alam', 'drift_genetik', 'aliran_gen'],
                  'next_topic': 'Hasil_Evolusi'
              },
              'Hasil_Evolusi': {
                  'subtopics': ['spesiasi', 'adaptasi', 'konvergensi', 'divergensi'],
                  'next_topic': 'Penerapan_Evolusi'
              },
              'Penerapan_Evolusi': {
                  'subtopics': ['bioteknologi', 'konservasi', 'medis', 'ekologi'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['perubahan', 'kehidupan', 'generasi'],
              'teori_evolusi': ['darwin', 'lamarck', 'mutasi'],
              'mekanisme_evolusi': ['variasi', 'seleksi', 'proses'],
              'bukti_evolusi': ['fosil', 'struktur', 'genetik'],
              'mutasi': ['genetik', 'perubahan', 'DNA'],
              'seleksi_alam': ['survival', 'adaptasi', 'lingkungan'],
              'drift_genetik': ['acak', 'populasi', 'frekuensi_gen'],
              'aliran_gen': ['migrasi', 'populasi', 'genetik'],
              'spesiasi': ['proses', 'spesies', 'pemisahan'],
              'adaptasi': ['penyesuaian', 'lingkungan', 'survive'],
              'konvergensi': ['kesamaan', 'evolusi', 'fungsi'],
              'divergensi': ['perbedaan', 'evolusi', 'spesies'],
              'bioteknologi': ['inovasi', 'rekayasa', 'genetik'],
              'konservasi': ['keanekaragaman', 'perlindungan', 'spesies'],
              'medis': ['genom', 'penyakit', 'pengobatan'],
              'ekologi': ['populasi', 'ekosistem', 'adaptasi']
          }
        },
        'ruang_lingkup_teknologi': {
          'learning_path': {
              'Ruang_Lingkup_Teknologi': {
                  'subtopics': ['definisi', 'perkembangan_teknologi', 'komponen_teknologi', 'penerapan_teknologi'],
                  'next_topic': 'Jenis_Teknologi'
              },
              'Jenis_Teknologi': {
                  'subtopics': ['teknologi_informasi', 'teknologi_biologi', 'teknologi_material', 'teknologi_energi'],
                  'next_topic': 'Dampak_Teknologi'
              },
              'Dampak_Teknologi': {
                  'subtopics': ['positif', 'negatif', 'ekonomi', 'lingkungan'],
                  'next_topic': 'Masa_Depan_Teknologi'
              },
              'Masa_Depan_Teknologi': {
                  'subtopics': ['kecerdasan_buatan', 'teknologi_nanoteknologi', 'rekayasa_genetika', 'robotik'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['inovasi', 'perkembangan', 'kehidupan'],
              'perkembangan_teknologi': ['sejarah', 'transformasi', 'kemajuan'],
              'komponen_teknologi': ['sistem', 'perangkat', 'proses'],
              'penerapan_teknologi': ['industri', 'kesehatan', 'pendidikan'],
              'teknologi_informasi': ['komputer', 'internet', 'komunikasi'],
              'teknologi_biologi': ['rekayasa', 'bioteknologi', 'kesehatan'],
              'teknologi_material': ['bahan', 'inovasi', 'material'],
              'teknologi_energi': ['sumber', 'terbarukan', 'efisiensi'],
              'positif': ['kemudahan', 'efisiensi', 'inovasi'],
              'negatif': ['pengangguran', 'dampak_sosial', 'limbah'],
              'ekonomi': ['produktivitas', 'biaya', 'kompetisi'],
              'lingkungan': ['polusi', 'konservasi', 'keberlanjutan'],
              'kecerdasan_buatan': ['AI', 'otomasi', 'teknologi_pintar'],
              'teknologi_nanoteknologi': ['mikro', 'material', 'inovasi'],
              'rekayasa_genetika': ['gen', 'DNA', 'bioteknologi'],
              'robotik': ['otomasi', 'robot', 'manufaktur']
          }
        },
        'hereditas': {
          'learning_path': {
              'Hereditas': {
                  'subtopics': ['definisi', 'teori_dasar', 'hukum_mendel', 'genetik'],
                  'next_topic': 'Pola_Pewarisan'
              },
              'Pola_Pewarisan': {
                  'subtopics': ['dominansi', 'kodominansi', 'pautan', 'interaksi_gen'],
                  'next_topic': 'Mutasi_Genetika'
              },
              'Mutasi_Genetika': {
                  'subtopics': ['pengertian', 'penyebab', 'jenis_mutasi', 'dampak_mutasi'],
                  'next_topic': 'Penerapan_Genetika'
              },
              'Penerapan_Genetika': {
                  'subtopics': ['kedokteran', 'pertanian', 'bioteknologi', 'konservasi'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['pewarisan', 'gen', 'DNA'],
              'teori_dasar': ['mendel', 'genetik', 'hukum'],
              'hukum_mendel': ['segregasi', 'independen', 'dominansi'],
              'genetik': ['DNA', 'kromosom', 'sifat'],
              'dominansi': ['utama', 'sifat', 'gen'],
              'kodominansi': ['bersama', 'gen', 'ekspresi'],
              'pautan': ['kromosom', 'gen', 'pewarisan'],
              'interaksi_gen': ['epistasis', 'sintesis', 'gen'],
              'pengertian': ['definisi', 'perubahan', 'genetik'],
              'penyebab': ['mutasi', 'lingkungan', 'error'],
              'jenis_mutasi': ['gen', 'kromosom', 'somatik'],
              'dampak_mutasi': ['positif', 'negatif', 'netral'],
              'kedokteran': ['genom', 'diagnosa', 'penyakit'],
              'pertanian': ['tanaman', 'genetik', 'hasil'],
              'bioteknologi': ['rekayasa', 'genom', 'produksi'],
              'konservasi': ['genetik', 'spesies', 'variasi']
          }
        },
        'jamur': {
          'learning_path': {
              'Jamur': {
                  'subtopics': ['ciri_umum', 'klasifikasi', 'peran_ekologis', 'sistem_reproduksi'],
                  'next_topic': 'Mikologi'
              },
              'Mikologi': {
                  'subtopics': ['mikologi_kedokteran', 'mikologi_pertanian', 'mikologi_industri'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'ciri_umum': ['karakteristik', 'fungi', 'eukariotik', 'multiseluler'],
              'klasifikasi': ['kingdom', 'basidiomycota', 'ascomycota', 'zygomycota'],
              'peran_ekologis': ['pengurai', 'dekomposer', 'simbiotik'],
              'sistem_reproduksi': ['sporulasi', 'seksual', 'aseksual', 'konidia'],
              'mikologi_kedokteran': ['infeksi', 'antibiotik', 'jamur', 'patogen'],
              'mikologi_pertanian': ['penyakit', 'tanaman', 'pestisida', 'fungisida'],
              'mikologi_industri': ['fermentasi', 'bioteknologi', 'pengolahan']
          }
        },
        'sistem_ekskresi': {
          'learning_path': {
              'Sistem_Ekskresi': {
                  'subtopics': ['fungsi', 'organ_eksresi', 'proses_eksresi', 'gangguan_eksresi'],
                  'next_topic': 'Manusia'
              },
              'Manusia': {
                  'subtopics': ['ginjal', 'pembuangan', 'urine', 'elektrolit'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'fungsi': ['mengeluarkan', 'limbah', 'beracun', 'homeostasis'],
              'organ_eksresi': ['ginjal', 'paru-paru', 'kulit', 'usus'],
              'proses_eksresi': ['filtrasi', 'reabsorpsi', 'sekrresi', 'pengeluaran'],
              'gangguan_eksresi': ['gagal_ginjal', 'batu_ginjal', 'diabetes', 'hipertensi'],
              'ginjal': ['nefron', 'glomerulus', 'ureter', 'urin'],
              'pembuangan': ['limbah', 'zat_beracun', 'urea'],
              'urine': ['komposisi', 'konsentrasi', 'pH', 'warna'],
              'elektrolit': ['natrium', 'kalium', 'kalsium', 'pH']
          }
        },
        'protista': {
          'learning_path': {
              'Protista': {
                  'subtopics': ['ciri_umum', 'klasifikasi', 'reproduksi', 'peran_pertanian'],
                  'next_topic': 'Protozoa'
              },
              'Protozoa': {
                  'subtopics': ['ciri', 'kelompok', 'peran_pertanian', 'penyakit'],
                  'next_topic': 'Alga'
              },
              'Alga': {
                  'subtopics': ['klasifikasi', 'peran_pertanian', 'alga_merah', 'alga_hijau'],
                  'next_topic': 'Jamur_Seperti'
              },
              'Jamur_Seperti': {
                  'subtopics': ['ciri', 'klasifikasi', 'reproduksi', 'peran_pertanian'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'ciri_umum': ['eukariotik', 'uniseluler', 'sel tunggal', 'multiseluler'],
              'klasifikasi': ['protista', 'protozoa', 'alga', 'jamur_seperti'],
              'reproduksi': ['aseksual', 'seksual', 'pembelahan', 'sporulasi'],
              'peran_pertanian': ['dekomposer', 'simbiotik', 'nitrogen'],
              'kelompok': ['flagellata', 'ciliata', 'sporozoa', 'sarcomastigophora'],
              'penyakit': ['malaria', 'amoebiasis', 'sleeping_sickness'],
              'alga_merah': ['rhodophyta', 'pigmen', 'karoten'],
              'alga_hijau': ['chlorophyta', 'klorofil', 'air_tawar'],
              'jamur_seperti': ['slime_mold', 'water_mold', 'dekomposer']
          }
        },
        'psikotropika': {
          'learning_path': {
              'Psikotropika': {
                  'subtopics': ['definisi', 'kategori', 'penggunaan', 'efek_samping'],
                  'next_topic': 'Psikoaktif'
              },
              'Psikoaktif': {
                  'subtopics': ['kafein', 'alkohol', 'ganja', 'nikotin'],
                  'next_topic': 'Regulasi'
              },
              'Regulasi': {
                  'subtopics': ['undang-undang', 'pengawasan', 'penyalahgunaan', 'tindakan'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'definisi': ['zat', 'psikotropik', 'mental', 'pengaruh'],
              'kategori': ['depresan', 'stimulan', 'halusinogen', 'psikoaktif'],
              'penggunaan': ['medis', 'rekreasi', 'obat', 'perawatan'],
              'efek_samping': ['kecanduan', 'penurunan_kognitif', 'kerusakan_jantung', 'gangguan_saraf'],
              'kafein': ['stimulasi', 'kopi', 'teh', 'kecanduan'],
              'alkohol': ['etanol', 'minuman_beralkohol', 'keracunan', 'sosial'],
              'ganja': ['THC', 'cannabinoid', 'rekreasi', 'penyalahgunaan'],
              'nikotin': ['rokok', 'zat_adiktif', 'perokok', 'kesehatan'],
              'undang-undang': ['legal', 'larangan', 'regulasi', 'penggunaan'],
              'pengawasan': ['kontrol', 'keamanan', 'kesehatan'],
              'penyalahgunaan': ['adiksi', 'overdosis', 'kecanduan'],
              'tindakan': ['rehabilitasi', 'pencegahan', 'pendidikan']
          }
        },
        'plantae': {
          'learning_path': {
              'Plantae': {
                  'subtopics': ['ciri_umum', 'klasifikasi_tumbuhan', 'struktur_tumbuhan'],
                  'next_topic': 'Klasifikasi'
              },
              'Klasifikasi': {
                  'subtopics': ['bryophyta', 'pteridophyta', 'spermatophyta'],
                  'next_topic': 'Fotosintesis'
              },
              'Fotosintesis': {
                  'subtopics': ['proses_fotosintesis', 'faktor_mempengaruhi', 'hasil_fotosintesis'],
                  'next_topic': 'Reproduksi'
              },
              'Reproduksi': {
                  'subtopics': ['reproduksi_vegetatif', 'reproduksi_generatif', 'penyerbukan', 'pembelahan_sel'],
                  'next_topic': 'Adaptasi'
              },
              'Adaptasi': {
                  'subtopics': ['adaptasi_morfologi', 'adaptasi_fisiologi', 'adaptasi_lingkungan', 'adaptasi terhadap kekeringan', 'adaptasi terhadap suhu'],
                  'next_topic': 'Ekologi'
              },
              'Ekologi': {
                  'subtopics': ['peran_tumbuhan', 'interaksi_ekosistem', 'konservasi', 'rantai_makanan', 'suksesi ekologis'],
                  'next_topic': 'Ekosistem Terestrial'
              },
              'Ekosistem Terestrial': {
                  'subtopics': ['hutan', 'padang rumput', 'gurun', 'pegunungan', 'tundra'],
                  'next_topic': None
              }
          },
          'subtopic_keywords': {
              'ciri_umum': ['karakteristik', 'ciri', 'umum', 'definisi', 'tumbuhan', 'eukariotik', 'autotrof'],
              'klasifikasi_tumbuhan': ['klasifikasi', 'taksonomi', 'kingdom', 'divisio', 'spesies', 'tumbuhan', 'tumbuhan darat'],
              'struktur_tumbuhan': ['struktur', 'organ', 'akar', 'batang', 'daun', 'xilem', 'floem', 'meristem'],
              'bryophyta': ['lumut', 'bryophyta', 'non-vaskular', 'spora', 'musci', 'lumut kerak'],
              'pteridophyta': ['paku', 'pteridophyta', 'vaskular', 'spora', 'ferns', 'paku kawat'],
              'spermatophyta': ['berbiji', 'spermatophyta', 'gymnospermae', 'angiospermae', 'pembungaan', 'biji'],
              'proses_fotosintesis': ['fotosintesis', 'klorofil', 'cahaya', 'energi', 'reaksi terang', 'reaksi gelap'],
              'faktor_mempengaruhi': ['faktor', 'pengaruh', 'lingkungan', 'cahaya', 'air', 'nutrisi', 'temperatur'],
              'hasil_fotosintesis': ['glukosa', 'oksigen', 'energi', 'karbohidrat', 'starch', 'glukosa_fosfat'],
              'reproduksi_vegetatif': ['perkembangbiakan', 'vektor', 'tunas', 'stolon', 'rhizom'],
              'reproduksi_generatif': ['generatif', 'pembuahan', 'biji', 'proses_pembuahan', 'gametofit', 'sporofit'],
              'penyerbukan': ['penyerbukan', 'pollen', 'angin', 'serangga', 'penyerbukan silang', 'penyerbukan sendiri'],
              'pembelahan_sel': ['mitosis', 'meiosis', 'kromosom', 'gamet', 'fertilisasi'],
              'adaptasi_morfologi': ['adaptasi', 'struktur', 'daun', 'akar', 'batang', 'tulang daun'],
              'adaptasi_fisiologi': ['fisiologi', 'pengaturan suhu', 'pernafasan', 'transpirasi', 'pengaturan air'],
              'adaptasi_lingkungan': ['lingkungan', 'pencemaran', 'polusi', 'perubahan iklim', 'keanekaragaman hayati'],
              'adaptasi_terhadap_kekeringan': ['xerofit', 'stomata', 'adaptasi air', 'daun kering', 'fotosintesis dalam kondisi kering'],
              'adaptasi_terhadap_suhu': ['mesofit', 'termofit', 'kemampuan fotosintesis pada suhu ekstrem'],
              'peran_tumbuhan': ['produksi oksigen', 'produksi makanan', 'penyedia pangan', 'pengatur suhu', 'pengikat karbon'],
              'interaksi_ekosistem': ['interaksi', 'kompetisi', 'predasi', 'simbiotik', 'saling membutuhkan'],
              'konservasi': ['pelestarian', 'keanekaragaman hayati', 'rehabilitasi', 'sumber daya alam', 'tumbuhan langka'],
              'rantai_makanan': ['produsen', 'konsumen', 'dekomposer', 'tumbuhan dasar', 'jaring-jaring makanan'],
              'suksesi_ekologis': ['suksesi', 'suksesi primer', 'suksesi sekunder', 'komunitas ekologis', 'perubahan lingkungan'],
              'hutan': ['hutan tropis', 'hutan boreal', 'hutan hujan tropis', 'keanekaragaman hayati', 'adaptasi pohon'],
              'padang_rumput': ['rumput', 'padang sabana', 'savana', 'flora dan fauna padang rumput'],
              'gurun': ['adaptasi gurun', 'cactus', 'vegetasi gurun', 'ekosistem gurun'],
              'pegunungan': ['flora pegunungan', 'keanekaragaman pegunungan', 'tanaman alpine'],
              'tundra': ['tundra', 'vegetasi tundra', 'adaptasi tanaman tundra', 'suhu ekstrem', 'salju'],
          }
        }
    }