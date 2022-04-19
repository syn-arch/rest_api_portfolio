<?php

namespace Database\Seeders;

use App\Models\Profile;
use Illuminate\Database\Seeder;

class ProfileSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Profile::create([
            'name' => 'John Doe',
            'profession' => 'Web Developer',
            'picture' => 'john-doe.jpg',
            'about' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincidunt nisi nisl euismod nunc. Nullam euismod, nisi vel tincidunt ornare, nisl nisl aliquet nunc, eu tincid',
            'email' => 'jhondoe@mail.com',
            'phone' => '+1 (555) 555-5555',
            'cv' => 'john-doe.pdf',
            'facebook' => 'jhondoe',
            'instagram' => 'jhondoe',
            'github' => 'jhondoe',
            'telegram' => 'jhondoe',
            'linkedin' => 'jhondoe',
        ]);
    }
}
