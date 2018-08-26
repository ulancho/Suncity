<?php
class BronModels extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    public function get_all($id){
        $table = ['booking_package','vip_booking_services','ticket_booking','booking_restaurants','accommodation_package','transportation_services'];
        $result = array();

       foreach ($table as $row){
           $this->db->where('user_id',$id);
           $this->db->order_by('id', 'DESC');
           $query =  $this->db->get($row);
           $result[$row] = $query->result();
       }

        $massiv = array();
      // для booking_package
       foreach ($result['booking_package'] as $res){
           $this->db->where('id',$res->cat_id);
           $this->db->order_by('id', 'DESC');
           $query =  $this->db->get('service_book_view');
           $massiv['booking_package'] = $query->result();
       }
       // для vip_booking_services
        foreach ($result['vip_booking_services'] as $res){
            $this->db->where('id',$res->cat_id);
            $this->db->order_by('id', 'DESC');
            $query =  $this->db->get('sub_category_three');
            $massiv['vip_booking_services'] = $query->result();
        }

        // для ticket_booking
        foreach ($result['ticket_booking'] as $res){
            $this->db->where('id',$res->cat_id);
            $this->db->order_by('id', 'DESC');
            $query =  $this->db->get('service_tick_sh_view');
            $massiv['ticket_booking'] = $query->result();
        }

        // для booking_restaurants
        foreach ($result['booking_restaurants'] as $res){
            $this->db->where('id',$res->cat_id);
            $this->db->order_by('id', 'DESC');
            $query =  $this->db->get('service_rest_view');
            $massiv['booking_restaurants'] = $query->result();
        }

        // для accommodation_package
        foreach ($result['accommodation_package'] as $res){
            $this->db->where('id',$res->cat_id);
            $this->db->order_by('id', 'DESC');
            $query =  $this->db->get('sub_category_one_info');
            $massiv['accommodation_package'] = $query->result();
        }
        // для transportation_services
        foreach ($result['transportation_services'] as $res){
            $this->db->where('id',$res->cat_id);
            $this->db->order_by('id', 'DESC');
            $query =  $this->db->get('services_transports');
            $massiv['transportation_services'] = $query->result();
        }

        return $massiv;
    }



}