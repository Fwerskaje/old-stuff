open Core

type host_info = {
    hostname: string;
    os_name: string;
    cpu_arch: string;
    timestamp: Time.t;
  }

let host = {
    hostname = "mac";
    os_name = "Darwin";
    cpu_arch = "x86_64";
    timestamp = Time.now ();
  }             
               
type 'a timestampled = { item: 'a; time: Time.t }

         
let first_timestampled list =
  List.reduce list ~f:(fun a b -> if a.time < b.time then a else b)

let host_info_to_string { hostname = h; os_name = os;
                          cpu_arch = c; timestamp = ts; } =
  sprintf "%s (%s / %s, on %s)" h os c (Time.to_string ts)

let host_info_to_string' { hostname; os_name; cpu_arch; timestamp; _ } =
  sprintf "%s (%s / %s) <%s>" hostname os_name cpu_arch
    (Time.to_string timestamp)
    
let host_info_to_string'' ~hostname ~os_name ~cpu_arch ~timestamp =
    sprintf "%s (%s / %s) <%s>" hostname os_name cpu_arch
    (Time.to_string timestamp)
  
type log_entry =
  { session_id: string;
    time: Time.t;
    important: bool;
    message: string;
  }
  
type heartbeat =
  { session_id: string;
    time: Time.t;
    status_message: string;
  }
  
type logon =
  { session_id: string;
    time: Time.t;
    user: string;
  }

let get_session_id t = t.session_id

module Log_entry = struct
  type t =
    { session_id: string;
      time: Time.t;
      important: bool;
      message: string;
    }
end
                 
module Heartbeat = struct
  type t =
    { session_id: string;
      time: Time.t;
      status_message: string;
    }
end
               
let create_log_entry ~session_id ~important message =
  { Log_entry.time = Time.now ();
    Log_entry.session_id;
    Log_entry.important;
    Log_entry.message;
  }
                     
type client_info =
  { addr: Unix.Inet_addr.t;
    port: int;
    user: string;
    credentials: string;
    last_heartbeat_time: Time.t;
  }

let register_heartbeat t hb =
  { t with last_heartbeat_time = hb.Heartbeat.time }

type client_info' =
  { addr: Unix.Inet_addr.t;
    port: int;
    user: string;
    credentials: string;
    mutable last_heartbeat_time: Time.t; mutable last_heartbeat_status: string;
  }

let register_heartbeat' =
  t.last_heartbeat_time <- hb.Heartbeat.time;
  t.last_heartbeat_status <- hb.Heartbeat.status_message



                               
    
    
      

                      
