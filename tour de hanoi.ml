let rec hanoi dep aux dest n = 
	if n>0 then begin
		hanoi dep dest aux (n-1);
		print_endline("deplacer disque " ^ string_of_int n ^ " de " ^ dep ^ " vers " ^ dest  );
		hanoi aux dep dest (n-1)
	end;;

	(*fonctions pour deplacer les disques*)

	let deplacer disque source 
	destination = 
	print_endline("deplacer disque " ^ string_of_int disque ^ " de " ^ source ^ " vers " ^ destination)
	let rec hanoi n source aux destination = 
	if n = 1 then 
	deplacer 1 source destination
	else begin
		hanoi (n-1) source destination aux;
		deplacer n source destination;
		hanoi (n-1) aux source destination
	end;;   
