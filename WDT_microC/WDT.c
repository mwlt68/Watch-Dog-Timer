void watch_dog_timer(){
    // port b as output
    trisb.b0=0;
    trisb.b1=0;
    trisb.b2=0;
    trisb.b3=0;

    PSA_bit=1; //Prescaler active for wdt

    // prescaler set 1/125 (binary 111)
    PS0_bit=1;
    PS1_bit=1;
    PS2_bit=1;

}
void main(){
    watch_dog_timer();
    portb.b0 = 1;
    delay_ms(200);
    portb.b0 = 0;
    delay_ms(200);
    while(1){
        portb.b1 = 1;
        delay_ms(1000);
        portb.b1 = 0;
        delay_ms(1000);
        portb.b2 = 1;
        delay_ms(1000);
        portb.b2 = 0;
        delay_ms(1000);
    }
}