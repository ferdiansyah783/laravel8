<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {

        // User::create([
        //     'name' => 'ferdi',
        //     'email' => 'ferdi@gmail.com',
        //     'password' => bcrypt('1234')
        // ]);

        // User::create([
        //     'name' => 'doddy',
        //     'email' => 'doddy@gmail.com',
        //     'password' => bcrypt('1234')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Progamming',
            'slug' => 'web-progamming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum eos mollitia ipsam minus id? Incidunt perferendis facilis hic alias saepe delectus pariatur libero obcaecati consequatur deserunt.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum eos mollitia ipsam minus id? Incidunt perferendis facilis hic alias saepe delectus pariatur libero obcaecati consequatur deserunt. Laboriosam animi eligendi delectus assumenda perspiciatis eos esse consequatur dolorem eaque dicta! Atque commodi maxime, architecto, impedit reprehenderit, soluta labore omnis ea voluptatem odio suscipit? Qui, ab exercitationem. Alias quod, impedit fugit consequatur quasi tempore quis quam voluptates nihil. Natus consequatur vero laboriosam quidem, odio culpa! Expedita perspiciatis iste quos necessitatibus aspernatur nisi. Est sequi aliquid illum ab velit vero eligendi quam in. Impedit eligendi nesciunt a officia ad ut, itaque ratione ea rerum.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul ke Dua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum eos mollitia ipsam minus id? Incidunt perferendis facilis hic alias saepe delectus pariatur libero obcaecati consequatur deserunt.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum eos mollitia ipsam minus id? Incidunt perferendis facilis hic alias saepe delectus pariatur libero obcaecati consequatur deserunt. Laboriosam animi eligendi delectus assumenda perspiciatis eos esse consequatur dolorem eaque dicta! Atque commodi maxime, architecto, impedit reprehenderit, soluta labore omnis ea voluptatem odio suscipit? Qui, ab exercitationem. Alias quod, impedit fugit consequatur quasi tempore quis quam voluptates nihil. Natus consequatur vero laboriosam quidem, odio culpa! Expedita perspiciatis iste quos necessitatibus aspernatur nisi. Est sequi aliquid illum ab velit vero eligendi quam in. Impedit eligendi nesciunt a officia ad ut, itaque ratione ea rerum.',
        //     'category_id' => 1,
        //     'user_id' => 2
        // ]);

        // Post::create([
        //     'title' => 'Judul ke Tiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum eos mollitia ipsam minus id? Incidunt perferendis facilis hic alias saepe delectus pariatur libero obcaecati consequatur deserunt.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum eos mollitia ipsam minus id? Incidunt perferendis facilis hic alias saepe delectus pariatur libero obcaecati consequatur deserunt. Laboriosam animi eligendi delectus assumenda perspiciatis eos esse consequatur dolorem eaque dicta! Atque commodi maxime, architecto, impedit reprehenderit, soluta labore omnis ea voluptatem odio suscipit? Qui, ab exercitationem. Alias quod, impedit fugit consequatur quasi tempore quis quam voluptates nihil. Natus consequatur vero laboriosam quidem, odio culpa! Expedita perspiciatis iste quos necessitatibus aspernatur nisi. Est sequi aliquid illum ab velit vero eligendi quam in. Impedit eligendi nesciunt a officia ad ut, itaque ratione ea rerum.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);
    }
}
