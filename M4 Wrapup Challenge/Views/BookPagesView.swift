//
//  BookPagesView.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import SwiftUI

struct BookPagesView: View {
    var body: some View {
        VStack {
            ScrollView {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu congue lacus, ac laoreet felis. Integer eros tortor, blandit id magna non, pharetra sodales urna. Donec egestas sed leo eu gravida. Quisque condimentum iaculis sem quis venenatis. Duis consectetur blandit elit porttitor tincidunt. Praesent mi libero, pulvinar ac nibh vitae, euismod feugiat elit. Sed elementum libero odio.\n\nVestibulum efficitur urna ac risus suscipit ullamcorper. Vestibulum et aliquet erat. Ut lobortis pretium nulla, a porta ipsum accumsan ut. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Donec at ullamcorper purus, sed ultricies mauris. Morbi facilisis sollicitudin purus in commodo. Cras maximus id mauris non pulvinar. Maecenas vitae pharetra leo. Pellentesque dolor ligula, ullamcorper sed ultricies eget, sollicitudin sit amet sapien. Vivamus in neque id nunc rutrum mattis at vitae velit. Sed vel vestibulum massa. Quisque sollicitudin sem ac massa interdum dignissim. Etiam metus ligula, facilisis at posuere et, mattis ut quam. Morbi urna arcu, egestas ut imperdiet et, molestie eget dolor. Vestibulum cursus, erat ac vestibulum congue, dolor felis iaculis lectus, vel pellentesque mauris arcu nec justo.")
                    .padding([.leading, .trailing])
            }
            
            Text("1")
        }
    }
}

struct BookPagesView_Previews: PreviewProvider {
    static var previews: some View {
        BookPagesView()
    }
}
