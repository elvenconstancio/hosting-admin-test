@extends('layouts.admin')
@section('content')
    <div class="container-fluid">
        <div class="card" data-aos="fade-up">
            <div class="card-header">Billings</div>
            <div class="card-body p-0">
                <div class="table-responsive">
                    <table class="table table-striped table-hover mb-0">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Service</th>
                                <th>Amount</th>
                                <th>Due Date</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($billings as $b)
                                <tr>
                                    <td>{{ $b->id }}</td>
                                    <td>{{ optional($b->service)->name }}</td>
                                    <td>Rp {{ number_format($b->amount, 0, ',', '.') }}</td>
                                    <td>{{ $b->due_date }}</td>
                                    <td>{{ ucfirst($b->status) }}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="card-footer">{{ $billings->links() }}</div>
        </div>
    </div>
@endsection
