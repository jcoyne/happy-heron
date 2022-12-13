describe('Create work version', () => {
    let work_id

    beforeEach(() => {
      const results = cy.appFactories([
        ['create', 'work_version_with_work_and_collection', 'with_required_associations', {} ]
      ]).then((results) => {
        cy.log(results[0])
        work_id = results[0].work_id
      })
    })

    it('deposits a work correctly after uploading a file', () => {
      cy.visit(`/works/${work_id}/edit`)

      // select browser upload option
      cy.get('#work_upload_type_browser').check()

      // try to deposit
      cy.get('input.btn[value="Deposit"]').click()

      // there is a message telling us we need to upload a file
      cy.get('div.invalid-feedback').should('contain', 'You must attach a file')

      // now upload a file
      cy.get('div.dropzone').selectFile('cypress/fixtures/test.txt', {
        action: 'drag-drop'
      })

      // wait for the upload to finish
      cy.wait(1000)

      // now try to deposit again
      cy.get('input.btn[value="Deposit"]').click()

      // successful deposit!
      cy.url().should('include', `/works/${work_id}/next_step`)
      cy.contains('You have successfully deposited your work')
    })

    it('is not able to deposit when globus feature enabled and globus upload option is selected ', () => {
      // globus feature flag is set
      cy.visit(`/works/${work_id}/edit`)

      // try to deposit
      cy.get('input.btn[value="Deposit"]').click()

      // there is a message telling us we need to upload a file
      cy.get('div.invalid-feedback').should('contain', 'You must attach a file')

      // now select globus upload option
      cy.get('#work_upload_type_globus').check()

      // deposit button should be disabled
      cy.get('input.btn[value="Deposit"]').should('be.disabled')

      // switch back to file upload option
      cy.get('#work_upload_type_browser').check()

      // deposit button should be enabled
      cy.get('input.btn[value="Deposit"]').should('be.enabled')
    })
})
