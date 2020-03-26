#!/bin/bash

OPTIONS="Start-All Server1 Server2 Server3 Server4 Server5 Server6 Cancel"
SERVER1_OPTIONS="All-Servers Server1-1 Server1-2 Back"
SERVER2_OPTIONS="All-Servers Server2-1 Server2-2 Back"
SERVER3_OPTIONS="All-Servers Server3-1 Server3-2 Server3-3 Back"
SERVER4_OPTIONS="All-Servers Server4-1 Server4-2 Back"
SERVER5_OPTIONS="All-Servers Server5-1 Back"
SERVER6_OPTIONS="All-Servers Server6-1 Back"




function server1() {
    select opt in $SERVER1_OPTIONS; do
	    case "$opt" in
		    "All-Servers")
			    clear
				echo "Starting all servers..."
				screen -dmS Server1-1 /home/mcpe/Server1/1/start.sh
				screen -dmS Server1-2 /home/mcpe/Server1/2/start.sh
				exit
			;;
			"Server1-1")
			    clear
				echo "Starting Server1-1 server..."
				screen -dmS Server1-1 /home/mcpe/Server1/1/start.sh
				exit
			;;
			"Server1-2")
			    clear
				echo "Starting Server1-2 server..."
				screen -dmS Server1-2 /home/mcpe/Server1/2/start.sh
				exit
			;;
			"Back")
			    clear
				main
				exit
			;;
			    *)
				clear
				echo Bad option
				exit
				break
			;;
		esac
	done
}
function server2() {
    select opt in $SERVER2_OPTIONS; do
	    case "$opt" in
		    "All-Servers")
			    clear
				echo "Starting all servers..."
				screen -dmS Server2-1 /home/mcpe/Server2/1/start.sh
				screen -dmS Server2-2 /home/mcpe/Server2/2/start.sh
				exit
			;;
			"Server2-1")
			    clear
				echo "Starting Server2-1 server..."
				screen -dmS Server2-1 /home/mcpe/Server2/1/start.sh
				exit
			;;
			"Server2-2")
			    clear
				echo "Starting Server2-2 server..."
				screen -dmS Server2-2 /home/mcpe/Server2/2/start.sh
				exit
			;;
			"Back")
			    clear
				main
				exit
			;;
			    *)
				clear
				echo Bad option
				exit
				break
			;;
		esac
	done
}
function server3() {
    select opt in $SERVER3_OPTIONS; do
	    case "$opt" in
		    "All-Servers")
			    clear
				echo "Starting all servers..."
				screen -dmS Server3-1 /home/mcpe/Server3/1/start.sh
				screen -dmS Server3-2 /home/mcpe/Server3/2/start.sh
				screen -dmS Server3-3 /home/mcpe/Server3/3/start.sh
				exit
			;;
			"Server3-1")
			    clear
				echo "Starting Server3-1 server..."
				screen -dmS BuildFFA-1 /home/mcpe/Server3/1/start.sh
				exit
			;;
			"Server3-2")
			    clear
				echo "Starting Server3-2 server..."
				screen -dmS BuildFFA-2 /home/mcpe/Server3/2/start.sh
				exit
			;;
			"Server3-3")
			    clear
				echo "Starting Server3-3 server..."
				screen -dmS Server3-3 /home/mcpe/Server3/3/start.sh
				exit
			;;
			"Back")
			    clear
				main
				exit
			;;
			    *)
				clear
				echo Bad option
				exit
				break
			;;
		esac
	done
}
function server4() {
    select opt in $SERVER4_OPTIONS; do
	    case "$opt" in
		    "All-Servers")
			    clear
				echo "Starting all servers..."
				screen -dmS Server4-1 /home/mcpe/Server4/1/start.sh
				screen -dmS Server4-2 /home/mcpe/Server4/2/start.sh
				exit
			;;
			"Server4-1")
			    clear
				echo "Starting Server4-1 server..."
				screen -dmS Server4-1 /home/mcpe/Server4/1/start.sh
				exit
			;;
			"Server4-2")
			    clear
				echo "Starting Server4-2 server..."
				screen -dmS MLGRush2x1-2 /home/mcpe/Server4/2/start.sh
				exit
			;;
			"Back")
			    clear
				main
				exit
			;;
			    *)
				clear
				echo Bad option
				main
				break
			;;
		esac
	done
}
function server5() {
    select opt in $SERVER5_OPTIONS; do
	    case "$opt" in
		    "All-Servers")
			    clear
				echo "Starting all servers..."
				screen -dmS Server5-1 /home/mcpe/Server5/1/start.sh
				exit
			;;
			"Server5-1")
			    clear
				echo "Starting Server5-1 server..."
				screen -dmS Server5-1 /home/mcpe/Server5/1/start.sh
				exit
			;;
			"Back")
			    clear
				main
				exit
			;;
			    *)
				clear
				echo Bad option
				main
				break
			;;
		esac
	done
}
function server6() {
    select opt in $SERVER6_OPTIONS; do
	    case "$opt" in
		    "All-Servers")
			    clear
				echo "Starting all servers..."
				screen -dmS Server6-1 /home/mcpe/Server6/1/start.sh
				exit
			;;
			"Server6-1")
			    clear
				echo "Starting Server6-1 server..."
				screen -dmS Server6-1 /home/mcpe/Lobby/1/start.sh
				exit
			;;
			"Back")
			    clear
				main
				exit
			;;
			    *)
				clear
				echo Bad option
				main
				break
			;;
		esac
	done
}
function main() {
    select opt in $OPTIONS; do
        case "$opt" in
            "Start-All")
                clear
                echo "Staring all servers..."
                startAll
                exit
            ;;
            "Server1")
                clear
                echo "Select a Server1 server."
                server1
                exit
            ;;
            "Server2")
                clear
                echo "Select a Server2 server."
                server2
                exit
            ;;
            "Server3")
                clear
                echo "Select a Server3 server."
                server3
                exit
            ;;
            "Server4")
                clear
                echo "Select a Server4 server."
                server4
                exit
                ;;
            "Server5")
                clear
                echo "Server5"
                server5
                exit
            ;;
            "Server6")
                clear
                echo "Select a Server6 server."
                server6
                exit
            ;;
            "Cancel")
                clear
                echo "Cancelled."
                exit
            ;;
            *)
                clear
                echo "Bad option"
                exit
                break
            ;;
        esac
    done
}
function startAll() {
	#Proxy
	screen -dmS Proxy /home/mcpe/Proxy/start.sh
	#Lobby
	screen -dmS Lobby-1 /home/mcpe/Lobby/1/start.sh
	#Bauserver
	screen -dmS Bauserver /home/mcpe/Bauserver/start.sh

	#MLGRush2x1
	screen -dmS MLGRush2x1-1 /home/mcpe/MLGRush2x1/1/start.sh
	screen -dmS MLGRush2x1-2 /home/mcpe/MLGRush2x1/2/start.sh

	#SumoPvP
	screen -dmS SumoPvP-1 /home/mcpe/SumoPvP/1/start.sh
	screen -dmS SumoPvP-2 /home/mcpe/SumoPvP/2/start.sh

	#WoolBattle
	screen -dmS WoolBattle-1 /home/mcpe/WoolBattle/1/start.sh
	screen -dmS WoolBattle-2 /home/mcpe/WoolBattle/2/start.sh

	#FFA
	screen -dmS BuildFFA-1 /home/mcpe/BuildFFA/1/start.sh
	screen -dmS BuildFFA-2 /home/mcpe/BuildFFA/2/start.sh
	screen -dmS BuildFFA-3 /home/mcpe/BuildFFA/3/start.sh

	#Development
	screen -dmS Cores /home/mcpe/Cores/start.sh
	screen -dmS GetDown-1 /home/mcpe/GetDown/1/start.sh

	echo "All servers started."
}
main

#Written by xxAROX's cat.
