package com.net.oya.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.net.oya.common.Page;
import com.net.oya.model.Client;
import com.net.oya.repository.ClientRepository;

@Service
@Transactional
public class ClientService {

	
	@Autowired
	private ClientRepository clientDao;

	public boolean checkLogin(Client client) {
		client = clientDao.findByUsernameAndPassword(client.getUsername(),
				client.getPassword());
		return client != null;
	}
	
	public Client findByUsernameAndPassword(String username,String password){
		Client client = clientDao.findByUsernameAndPassword(username, password);
		return client;
	}

    public Client findByUsername(String username){
        return clientDao.findByUsername(username);
    }
    public List<Client> findClient(Page<Client> page2){
		page2.setResult(clientDao.findAll(page2.getPageable()).getContent());
		page2.setTotalCount(clientDao.count());
		return page2.getResult();
	}
	public void save(Client client) {
		clientDao.save(client);
	}

	public Client findOne(Integer id) {
		return clientDao.findOne(id);
	}

	public  void updateClient(Client client) {
		 clientDao.save(client);
		
	}
	public void clientdelete(Integer id) {
		clientDao.delete(id);
	}
	public Client findById(Integer id) {
		return clientDao.findOne(id);
	}

}
