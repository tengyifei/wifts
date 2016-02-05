//
//  HTTPServer.swift
//  Wifts
//
//  Created by Yifei Teng on 2/4/16.
//
//

import Caramel

public class HTTPServer {
    let host: String
    let server: TCPServer
    
    public init(host: String, port: UInt16) {
        self.host = host
        self.server = TCPServer(port: port)
    }
    
    public func start() throws {
        try server.listen { connection in
            connection.incoming.wait { result in
                var data = Data()
                data.append([UInt8]("Response: Hello".utf8))
                connection.outgoing.write(data)
            }
        }
    }
}
