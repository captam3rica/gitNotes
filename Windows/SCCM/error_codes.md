# SCCM Error Codes

**0x8009310b | An error occurred while retrieving policy for this computer**

**Message**

  > Failed to download policy **KSU2002D**-KSU0004F-6F6BCC28 (Code 0x8009310b).	TSMBootstrap	4/5/2017 2:27:03 PM	1312 (0x0520)

The problematic policy can be determined using the first 8 characters of the policy code above.

  > KSU2002D

- In the SCCM console go to Monitoring ---> Deployments
- from the “Add Criteria” button choose “Deployment ID” and type in the above code.  

**Fix**

- Remove the deployment then re deploy the task sequence to the collection.

**Resources**

- http://support.risualblogs.com/blog/2013/10/10/an-error-occurred-while-retrieving-policy-for-this-computer-0x8009310b-sccm-2012/
