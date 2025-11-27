import 'package:flutter/material.dart';
import '../models/country.dart';

class CountryDetailPage extends StatelessWidget {
  final Country country;

  const CountryDetailPage({Key? key, required this.country}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.nom),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drapeau en grand format
            Container(
              height: 250,
              color: Colors.grey[200],
              child: Image.asset(
                country.drapeau,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(
                    child: Icon(
                      Icons.flag,
                      size: 100,
                      color: Colors.teal,
                    ),
                  );
                },
              ),
            ),
            
            // Informations du pays
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Titre
                  Text(
                    country.nom,
                    style: const TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  
                  // Carte Capitale
                  _buildInfoCard(
                    icon: Icons.location_city,
                    title: 'Capitale',
                    value: country.capitale,
                  ),
                  const SizedBox(height: 15),
                  
                  // Carte Population
                  _buildInfoCard(
                    icon: Icons.people,
                    title: 'Population',
                    value: country.population,
                  ),
                  const SizedBox(height: 15),
                  
                  // Carte Superficie
                  _buildInfoCard(
                    icon: Icons.map,
                    title: 'Superficie',
                    value: country.superficie,
                  ),
                  const SizedBox(height: 15),
                  
                  // Carte Langue
                  _buildInfoCard(
                    icon: Icons.language,
                    title: 'Langue officielle',
                    value: country.langue,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String value,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.teal.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: Colors.teal,
                size: 30,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}