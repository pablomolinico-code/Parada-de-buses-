from models import Route


def build_graph(routes: list[Route]) -> dict[int, list[Route]]:
    graph: dict[int, list[Route]] = {}

    for route in routes:
        if route.origin_id not in graph:
            graph[route.origin_id] = []

        graph[route.origin_id].append(route)

    return graph