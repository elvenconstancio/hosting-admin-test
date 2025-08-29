@extends('layouts.admin')
@section('content')
    <div class="container-fluid">
        <div class="row mb-3">
            <div class="col-12 col-md-4 mb-2" data-aos="fade-up">
                <div class="card text-white text-bg-primary">
                    <div class="card-body">
                        <h6>Users</h6>
                        <h3>{{ $usersCount }}</h3>
                        <a href="{{ route('admin.users.index') }}" class="btn btn-outline-light btn-sm mt-4">
                            Manage Users <i class="bi bi-arrow-right-circle"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 mb-2" data-aos="fade-up" data-aos-delay="100">
                <div class="card text-white text-bg-secondary">
                    <div class="card-body">
                        <h6>Services</h6>
                        <h3>{{ $servicesCount }}</h3>
                        <a href="{{ route('admin.services.index') }}" class="btn btn-outline-light btn-sm mt-4">
                            Manage Services <i class="bi bi-arrow-right-circle"></i>
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 mb-2" data-aos="fade-up" data-aos-delay="200">
                <div class="card text-white text-bg-success">
                    <div class="card-body">
                        <h6>Unpaid Bills</h6>
                        <h3>{{ $unpaidBills }}</h3>
                        <a href="{{ route('admin.billings.index') }}" class="btn btn-outline-light btn-sm mt-4">
                            Manage Billings <i class="bi bi-arrow-right-circle"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <hr class="my-4">

        <div class="row">
            <div class="col-12 mb-3" data-aos="fade-up" data-aos-delay="300">
                <div class="card">
                    <div class="card-header">Latest Services</div>
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover mb-0">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Domain</th>
                                        <th>Owner</th>
                                        <th>Status</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @forelse($latestServices as $service)
                                        <tr>
                                            <td>{{ $service->id }}</td>
                                            <td>{{ $service->name }}</td>
                                            <td>{{ $service->domain }}</td>
                                            <td>{{ optional($service->user)->name }}</td>
                                            <td>{{ ucfirst($service->status) }}</td>
                                            <td>Rp {{ number_format($service->price, 0, ',', '.') }}</td>
                                        </tr>
                                    @empty
                                        <tr>
                                            <td colspan="6">Tidak ada data</td>
                                        </tr>
                                    @endforelse
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
