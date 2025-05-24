$user = \App\Models\User::first();
$token = $user->createToken('test-token')->plainTextToken;
echo $token;
exit