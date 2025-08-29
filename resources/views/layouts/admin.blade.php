<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    {{-- Bootstrap CSS CDN --}}
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    {{-- Icon Bootstrap --}}
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    {{-- AOS --}}
    <link rel="stylesheet" href="https://unpkg.com/aos@2.3.1/dist/aos.css">

    <style>
        /* Sidebar styles */
        body {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .app {
            display: flex;
            flex: 1 1 auto;
        }

        .sidebar {
            width: 240px;
            background-color: #343a40;
            padding-top: 20px;
            min-height: 100vh;
            transition: all 0.3s;
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
        }

        .sidebar a {
            color: #fff;
            padding: 12px 20px;
            border-radius: 0.375rem;
            transition: background-color 0.3s, color 0.3s;
        }

        .sidebar .nav-link.active,
        .sidebar .nav-link:hover {
            background-color: #495057;
            color: #fff;
        }

        @media (max-width: 768px) {
            .sidebar {
                position: fixed;
                left: -260px;
                transition: left .25s ease;
                z-index: 1030;
            }

            .sidebar.show {
                left: 0;
            }

            .content-overlay {
                display: none;
            }
        }

        .content {
            flex: 1;
            padding: 20px;
        }

        footer {
            background: #f8f9fa;
            padding: 12px 20px;
        }
    </style>
    <title>Admin Panel</title>
</head>
<body>
    <div class="app">
        <!-- Sidebar -->
        <nav class="sidebar d-flex flex-column p-3" data-aos="fade-right">
            <a href="{{ route('admin.dashboard') }}" class="d-flex align-items center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                <span class="fs-4">Hosting Admin</span>
            </a>

            <hr class="text-white">

            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a href="{{ route('admin.dashboard') }}" class="nav-link {{ request()->routeIs('admin.dashboard') ? 'active' : '' }}">Dashboard</a>
                </li>
                <li>
                    <a href="{{ route('admin.users.index') }}" class="nav-link {{ request()->routeIs('admin.users.*') ? 'active' : '' }}">Users</a>
                </li>
                <li>
                    <a href="{{ route('admin.services.index') }}" class="nav-link {{ request()->routeIs('admin.services.*') ? 'active' : '' }}">Services</a>
                </li>
                <li>
                    <a href="{{ route('admin.billings.index') }}" class="nav-link {{ request()->routeIs('admin.billings.*') ? 'active' : '' }}">Billings</a>
                </li>
                <li>
                    <a href="#" class="nav-link">Settings</a>
                </li>
            </ul>

        </nav>
        <!-- Content -->
        <div class="content w-100">
            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white mb-3 border-bottom" data-aos="fade-right">
                <div class="container-fluid">
                    <button class="btn btn-sm btn-outline-sceondary d-md-none border" id="sidebarToggle">☰</button>
                    <div class="ms-auto d-flex align-items-center">
                        <div class="me-3">Hello, <strong>{{ session('admin_name', 'Admin') }}</strong></div>
                        <a href="{{ route('admin.logout') }}" class="btn btn-sm btn-outline-danger">Logout</a>
                    </div>
                </div>
            </nav>

            <!-- Main content -->
            <main>
                @yield('content')
            </main>

            <footer class="mt-4">
                <div class="d-flex justify-content-center">
                    <div>© {{ date('Y') }} Hosting Company</div>
                </div>
            </footer>
        </div>
    </div>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <script>
        AOS.init();
    </script>
    <script>
        document.getElementById('sidebarToggle')?.addEventListener('click', function() {
            document.querySelector('.sidebar').classList.toggle('show');
        });
    </script>
</body>
</html>
