import 'package:flutter/material.dart';
import 'Perfil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F7F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B2500),
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Row(
          children: [
            Icon(Icons.local_fire_department, color: Colors.amber, size: 28),
            SizedBox(width: 8),
            Text(
              "FOME DE LEÃO",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                fontSize: 19,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.workspace_premium, color: Colors.amber),
            tooltip: "Destaques Reais",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: "Buscar",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.tune),
            tooltip: "Filtros",
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF8B2500), Color(0xFFC0392B)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.local_fire_department, size: 16, color: Colors.black87),
                        SizedBox(width: 4),
                        Text(
                          "DESTAQUE DO DIA",
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "O apetite de um leão!",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    "Receitas nobres e majestosas preparadas para despertar o rei que há em você.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFFFDEBD0),
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Text(
                      "Ver Destaques",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    label: const Icon(Icons.arrow_forward, size: 18),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber.shade600,
                      foregroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categorias Reais",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C1810),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Ver todas",
                      style: TextStyle(
                        color: Color(0xFF8B2500),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  _buildCategoryCard("Massas Nobres", Icons.restaurant, const Color(0xFFFFF3E0)),
                  const SizedBox(width: 12),
                  _buildCategoryCard("Carnes do Rei", Icons.outdoor_grill, const Color(0xFFFFEBEE)),
                  const SizedBox(width: 12),
                  _buildCategoryCard("Sobremesas Majestosas", Icons.cake, const Color(0xFFF3E5F5)),
                  const SizedBox(width: 12),
                  _buildCategoryCard("Bebidas Douradas", Icons.local_bar, const Color(0xFFFFFDE7)),
                ],
              ),
            ),

            const SizedBox(height: 24),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Receitas do Rei",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2C1810),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Pratos emblemáticos para saborear com grandeza",
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _buildRecipeCard(
                    badgeText: "TOP 1",
                    badgeColor: Colors.amber.shade700,
                    imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuB0we4kevudYQN399g27HV9oG5rr6eJXbSg928zI6gxXEym-IaeBPHIAF3JumoOJo1jb74eZhnkpwIsN-gOYpo-JZkvkQcHWzZ5FzUApT2pAUzDCj6kthC2xSVHKYZQGHCD1taM23QrFleIAxgJyqx9G6hebkoE5f6PIpYtPlUQNoyl55IMljfq-2RFO2Bs5AXLnKZ5coRiinZZRC-lqvH0JN3yuoDzJh-VCh9lCZU",
                    category: "Italiana Nobre",
                    title: "Classic Margherita Pizza",
                    description: "Massa fresca de longa fermentação",
                    time: "35 min",
                    difficulty: "Fácil",
                    rating: "4.6",
                  ),
                  const SizedBox(height: 16),
                  _buildRecipeCard(
                    badgeText: "CHEF",
                    badgeColor: const Color(0xFF8B2500),
                    imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuCTlYqPfkLTYRvdAMc4--C6278a-BhuoftnYdXY6sHh8K6AIwFRRJfuMTGQAlFIZ8k8ouo3l-dyEbRhZTkBodWVsy_L3Vvp3LLk6WQrhjzvVB_k-J0brwDAiS_MWU551D2uuWuWtlEjrG7ztZPJTPE8CUxc0Vancg64sDbizTHTefTA9e42x3MLWU1kh1LHQl_a9snPLXT2K74HJwiRpPlIgukvL1kZGAkUMritrlQ",
                    category: "Carnes do Rei",
                    title: "Costela Real Braseada",
                    description: "Cozida lentamente ao molho âmbar",
                    time: "90 min",
                    difficulty: "Médio",
                    rating: "4.9",
                  ),
                  const SizedBox(height: 16),
                  _buildRecipeCard(
                    badgeText: "NOVO",
                    badgeColor: Colors.teal.shade700,
                    imageUrl: "https://lh3.googleusercontent.com/aida-public/AB6AXuC8_xnYWjOAb8eT-iwYf2s5tx9Leh9aB2LJKZ-Gqf0F2jGpSFc4LbjWcBl0PTMBEE4v0lArL0e6BEVGS-rxEhZAaGT-6p9tCKTT5wARQJU2UoC25SY2zR2JSWEzfkBtVYnkXCVTSjgdkB38s9q5Xrdv03fr9Nbux5FgxA5y8YTEEZDtsQbpwwjXapIwU_1dYxw3on5i2OQOW2ZRWq5-bG0JwsQQym9jMucg58V0CQ8",
                    category: "Hambúrguer Gourmet",
                    title: "Hambúrguer da Selva",
                    description: "Blend nobre com queijo cheddar maturado",
                    time: "25 min",
                    difficulty: "Fácil",
                    rating: "4.8",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.amber.shade200, width: 1.5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.04),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.menu_book, color: Color(0xFF8B2500)),
                  ),
                  const SizedBox(width: 14),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dica do Mestre",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2C1810),
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "Descubra os segredos da marinada real",
                          style: TextStyle(fontSize: 13, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.chevron_right, color: Colors.grey),
                ],
              ),
            ),

            const SizedBox(height: 28),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Perfil()),
            );
          }
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF8B2500),
        unselectedItemColor: Colors.grey.shade500,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Explorar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Pesquisa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Perfil",
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String title, IconData icon, Color bgColor) {
    return Container(
      width: 120,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.black12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: bgColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: const Color(0xFF8B2500), size: 26),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2C1810),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeCard({
    required String badgeText,
    required Color badgeColor,
    required String imageUrl,
    required String category,
    required String title,
    required String description,
    required String time,
    required String difficulty,
    required String rating,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(18)),
                child: Image.network(
                  imageUrl,
                  height: 170,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 170,
                      color: Colors.grey.shade300,
                      child: const Center(
                        child: Icon(Icons.restaurant_menu, size: 48, color: Colors.grey),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: badgeColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    badgeText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.9),
                  radius: 18,
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color(0xFF8B2500),
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF8B2500),
                    letterSpacing: 0.8,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2C1810),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 14),
                Row(
                  children: [
                    const Icon(Icons.schedule, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      time,
                      style: const TextStyle(fontSize: 12, color: Colors.black87),
                    ),
                    const SizedBox(width: 14),
                    const Icon(Icons.signal_cellular_alt, size: 16, color: Colors.grey),
                    const SizedBox(width: 4),
                    Text(
                      difficulty,
                      style: const TextStyle(fontSize: 12, color: Colors.black87),
                    ),
                    const Spacer(),
                    const Icon(Icons.star, size: 16, color: Colors.amber),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

