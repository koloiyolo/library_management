import 'package:library_management/imports.dart';

class AuthorPage extends StatefulWidget {
  const AuthorPage({super.key});

  @override
  State<AuthorPage> createState() => _AuthorPageState();
}

class _AuthorPageState extends State<AuthorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: authorList.length,
              itemBuilder: ((context, index) => listTile(index))),
          (currentCustomerId == 0)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add, size: 48),
                      )),
                )
              : const SizedBox(),
        ],
      ),
    );
  }

  Widget listTile(int index) {
    List<Book> books = writtenBy(authorList[index].authorId);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.person, size: 64),
            Text(
              authorList[index].get(),
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 8),
            const Text("Books: "),
            SizedBox(
              height: 80,
              child: ListView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: books.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('- ${books[index].title}'),
                      const SizedBox(height: 8)
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
