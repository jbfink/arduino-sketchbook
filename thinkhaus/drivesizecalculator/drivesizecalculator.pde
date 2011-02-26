/* Drive size calculator!
 *
 */

int drive_gb = 100;
long drive_mb;
// Note that this still breaks. That's because in the interim it's still using the int
// We fix this by making the two numbers equal before we calculate
// We could make two longs, but it takes up two extra bytes !!!
void setup()

{
  Serial.begin(9600);

  Serial.print("Your HD is ");
  Serial.print(drive_gb);
  Serial.println(" GB Large.");
  
  drive_mb = drive_gb;
  drive_mb = 1024 * drive_mb;

  Serial.print("It can store ");
  Serial.print(drive_mb);
  Serial.println(" Megabytes!");

}

void loop()
{

}

