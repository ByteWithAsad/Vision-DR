class PatientReport {
  final String patientId;
  final String diagnosis;
  final String date;
  final String doctorNotes;
  final String imageUrl;

  PatientReport({
    required this.patientId,
    required this.diagnosis,
    required this.date,
    required this.doctorNotes,
    required this.imageUrl,
  });
}
