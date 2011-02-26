/* Drive size calculator!
 *
 */

int drive_gb = 5;
int drive_mb;

void setup()

{
  Serial.begin(9600);

  Serial.print("Your HD is ");
  Serial.print(drive_gb);
  Serial.println(" GB Large.");

  drive_mb = 1024 * drive_gb;

  Serial.print("It can store ");
  Serial.print(drive_mb);
  Serial.println(" Megabytes!");

}

void loop()
{

}

