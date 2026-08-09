#This is a Python Script for use with xfreerdp, it allows a user to select various options for use with thier system to allow RDP into another system

#Author Etienne Quartey-Papafio

print("This Python script will create a shell script that allows a user to connect to another \ncomputer using xfreerdp and set customisable options.")
print("\nWould you like to proceed with this?")

confirmation = int(input("1 for Yes, any other number for No\n"))

print("Please enter your ip address in octects without the '.'\n")

octect1=int(input("Octect 1: "))

octect2=int(input("Octect 2: "))

octect3=int(input("Octect 3: "))

octect4=int(input("Octect 4: "))

str(octect1)
str(octect2)
str(octect3)
str(octect4)

ipAddress=str(octect1)+(".")+str(octect2)+(".")+str(octect3)+(".")+str(octect4)

print(ipAddress)

print("\nPlease enter target computers username\n")

user=str(input("User: "))

print("\nPlease enter target computers password\n")

password=str(input("Password: "))

RDP=("xfreerdp")+(" ")+("/u:")+user+(" ")+("/p:")+password+(" ")+("/v:")+ipAddress

f= open("RDPFile.sh","x")

with open("RDPFile.sh","w") as f:
    f.write(RDP)


