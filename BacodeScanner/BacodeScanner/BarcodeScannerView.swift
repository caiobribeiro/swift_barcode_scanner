//
//  ContentView.swift
//  BacodeScanner
//
//  Created by Caio Beraldi Ribeiro on 04/04/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannerCode = ""

    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannerCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)

                Spacer().frame(height: 60)

                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)

                Text(scannerCode.isEmpty ? "Not Yet Scanned" : scannerCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannerCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
