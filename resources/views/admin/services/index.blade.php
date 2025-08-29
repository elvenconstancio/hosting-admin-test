@extends('layouts.admin')
@section('content')
    <div class="container-fluid">
        <div class="card" data-aos="fade-up">
            <div class="card-header">Services</div>
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
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($services as $service)
                                <tr>
                                    <td>{{ $service->id }}</td>
                                    <td>{{ $service->name }}</td>
                                    <td>{{ $service->domain }}</td>
                                    <td>{{ optional($service->user)->name }}</td>
                                    <td>{{ ucfirst($service->status) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer">{{ $services->links() }}</div>
        </div>
    </div>
@endsection
