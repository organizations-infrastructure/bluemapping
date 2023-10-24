locals {
  policies = {
    vpc-infrastructure = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "ec2:DescribeAvailabilityZones",
            "ec2:CreateTags"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ec2:CreateNatGateway",
            "ec2:DeleteNatGateway",
            "ec2:DescribeNatGateways",
            "ec2:AllocateAddress",
            "ec2:ReleaseAddress",
            "ec2:DescribeAddresses",
            "ec2:CreateInternetGateway",
            "ec2:DescribeInternetGateways",
            "ec2:AttachInternetGateway",
            "ec2:DetachInternetGateway",
            "ec2:DeleteInternetGateway"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ec2:CreateVpc",
            "ec2:DescribeVpcs",
            "ec2:DescribeNetworkInterfaces",
            "ec2:DescribeVpcAttribute",
            "ec2:ModifyVpcAttribute",
            "ec2:DeleteVpc",
            "ec2:DescribeVpcClassicLink",
            "ec2:DisableVpcClassicLink",
            "ec2:EnableVpcClassicLink",
            "ec2:DescribeVpcClassicLinkDnsSupport",
            "ec2:DisableVpcClassicLinkDnsSupport",
            "ec2:EnableVpcClassicLinkDnsSupport"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ec2:CreateSubnet",
            "ec2:DescribeSubnets",
            "ec2:ModifySubnetAttribute",
            "ec2:DeleteSubnet"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ec2:CreateRouteTable",
            "ec2:DescribeRouteTables",
            "ec2:CreateRoute",
            "ec2:ReplaceRoute",
            "ec2:DeleteRoute",
            "ec2:DeleteRouteTable",
            "ec2:AssociateRouteTable",
            "ec2:DisassociateRouteTable",
            "ec2:ReplaceRouteTableAssociation"
          ],
          "Resource" : "*"
        }
      ]
    })
    domain-infrastructure = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "acm:RequestCertificate",
            "acm:DescribeCertificate",
            "acm:DeleteCertificate",
            "acm:ListCertificates",
            "acm:ListTagsForCertificate",
            "acm:AddTagsToCertificate",
            "acm:RemoveTagsFromCertificate"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "route53:GetHostedZone",
            "route53:ListHostedZones",
            "route53:ChangeTagsForResource",
            "route53:CreateHostedZone",
            "route53:DeleteHostedZone",
            "route53:UpdateHostedZoneComment",
            "route53:ChangeResourceRecordSets",
            "route53:ListResourceRecordSets",
            "route53:ListTagsForResource",
            "route53:GetChange",
            "route53:GetReusableDelegationSet",
            "route53:ListReusableDelegationSets",
            "route53:CreateReusableDelegationSet",
            "route53:DeleteReusableDelegationSet"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "route53domains:ListDomains",
            "route53domains:GetDomainDetail",
            "route53domains:RegisterDomain",
            "route53domains:DeleteDomain",
            "route53domains:GetOperationDetail",
            "route53domains:UpdateDomainContact",
            "route53domains:UpdateDomainNameservers",
            "route53domains:CheckDomainAvailability",
            "route53domains:RetrieveDomainAuthCode",
            "route53domains:ListTagsForDomain",
            "route53domains:UpdateTagsForDomain"
          ],
          "Resource" : "*"
        }
      ]
    })
    email-infrastructure = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "iam:CreateRole",
            "iam:DeleteRole",
            "iam:AttachRolePolicy",
            "iam:DetachRolePolicy",
            "iam:PutRolePolicy",
            "iam:GetRole",
            "iam:GetRolePolicy",
            "iam:ListRolePolicies",
            "iam:ListAttachedRolePolicies",
            "iam:DeleteRolePolicy",
            "iam:ListInstanceProfilesForRole",
            "iam:PassRole"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "lambda:CreateFunction",
            "lambda:UpdateFunctionCode",
            "lambda:UpdateFunctionConfiguration",
            "lambda:GetFunction",
            "lambda:GetFunctionConfiguration",
            "lambda:GetFunctionCodeSigningConfig",
            "lambda:GetPolicy",
            "lambda:ListFunctions",
            "lambda:ListVersionsByFunction",
            "lambda:DeleteFunction",
            "lambda:InvokeFunction",
            "lambda:AddPermission",
            "lambda:RemovePermission"
          ],
          "Resource" : "arn:aws:lambda:*:*:function:email_forwarding"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "s3:CreateBucket",
            "s3:DeleteBucket",
            "s3:DeleteObject",
            "s3:DeleteBucketPolicy",
            "s3:GetAccelerateConfiguration",
            "s3:GetAnalyticsConfiguration",
            "s3:GetBucketAcl",
            "s3:GetBucketCORS",
            "s3:GetBucketLocation",
            "s3:GetBucketLogging",
            "s3:GetBucketNotification",
            "s3:GetBucketObjectLockConfiguration",
            "s3:GetBucketOwnershipControls",
            "s3:GetBucketPolicy",
            "s3:GetBucketPolicyStatus",
            "s3:GetBucketPublicAccessBlock",
            "s3:GetBucketRequestPayment",
            "s3:GetBucketTagging",
            "s3:GetBucketVersioning",
            "s3:GetBucketWebsite",
            "s3:GetEncryptionConfiguration",
            "s3:GetIntelligentTieringConfiguration",
            "s3:GetInventoryConfiguration",
            "s3:GetLifecycleConfiguration",
            "s3:GetMetricsConfiguration",
            "s3:GetObject",
            "s3:GetObjectAcl",
            "s3:GetObjectAttributes",
            "s3:GetObjectLegalHold",
            "s3:GetObjectRetention",
            "s3:GetObjectTagging",
            "s3:GetObjectTorrent",
            "s3:GetObjectVersion",
            "s3:GetObjectVersionAcl",
            "s3:GetObjectVersionAttributes",
            "s3:GetObjectVersionForReplication",
            "s3:GetObjectVersionTagging",
            "s3:GetObjectVersionTorrent",
            "s3:GetReplicationConfiguration",
            "s3:ListBucket",
            "s3:PutBucketPolicy",
            "s3:PutBucketTagging",
            "s3:PutObject"
          ],
          "Resource" : [
            "arn:aws:s3:::${local.project.name}-email",
            "arn:aws:s3:::${local.project.name}-email/*"
          ]
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ses:CreateConfigurationSet",
            "ses:CreateEmailIdentity",
            "ses:CreateEmailTemplate",
            "ses:CreateReceiptRule",
            "ses:CreateReceiptRuleSet",
            "ses:DeleteConfigurationSet",
            "ses:DeleteEmailIdentity",
            "ses:DeleteEmailTemplate",
            "ses:DeleteReceiptRule",
            "ses:DeleteReceiptRuleSet",
            "ses:DescribeReceiptRule",
            "ses:DescribeReceiptRuleSet",
            "ses:GetConfigurationSet",
            "ses:GetEmailIdentity",
            "ses:GetEmailTemplate",
            "ses:ListConfigurationSets",
            "ses:ListEmailIdentities",
            "ses:ListEmailTemplates",
            "ses:ListReceiptRules",
            "ses:ListReceiptRuleSets",
            "ses:ListTagsForResource",
            "ses:SendEmail",
            "ses:SendRawEmail",
            "ses:TagResource",
            "ses:UpdateConfigurationSet",
            "ses:UpdateEmailIdentity",
            "ses:UpdateEmailTemplate",
            "ses:UpdateReceiptRule",
            "ses:UpdateReceiptRuleSet"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "route53:ChangeResourceRecordSets",
            "route53:ListResourceRecordSets",
            "route53:GetHostedZone",
            "route53:GetChange"
          ],
          "Resource" : [
            "arn:aws:route53:::hostedzone/*",
            "arn:aws:route53:::change/*"
          ]
        }
      ]
    })
    registry-infrastructure = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          Action = [
            "ecr:GetDownloadUrlForLayer",
            "ecr:BatchGetImage",
            "ecr:BatchCheckLayerAvailability",
            "ecr:PutImage",
            "ecr:CreateRepository",
            "ecr:DeleteRepository",
            "ecr:InitiateLayerUpload",
            "ecr:UploadLayerPart",
            "ecr:CompleteLayerUpload",
            "ecr:DescribeRepositories",
            "ecr:ListImages",
            "ecr:ListTagsForResource",
            "ecr:TagResource",
            "ecr:UntagResource",
            "ecr:DescribeImages"
          ]
          Effect   = "Allow"
          Resource = "*"
        }
      ]
    })
    compute = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "ecr:GetAuthorizationToken"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ecr:BatchCheckLayerAvailability",
            "ecr:GetDownloadUrlForLayer",
            "ecr:BatchGetImage",
            "ecr:InitiateLayerUpload",
            "ecr:UploadLayerPart",
            "ecr:CompleteLayerUpload",
            "ecr:PutImage"
          ],
          "Resource" : "*" #"arn:aws:ecr:us-east-1:<account-id>:repository/<repository-name>" => get account id from child-organization output
        }
      ]
    })
    batch-infrastructure = jsonencode({
      "Version" : "2012-10-17",
      "Statement" : [
        {
          "Effect" : "Allow",
          "Action" : [
            "iam:CreateRole",
            "iam:DeleteRole",
            "iam:AttachRolePolicy",
            "iam:DetachRolePolicy",
            "iam:PutRolePolicy",
            "iam:GetRole",
            "iam:GetRolePolicy",
            "iam:ListRolePolicies",
            "iam:ListAttachedRolePolicies",
            "iam:DeleteRolePolicy",
            "iam:ListInstanceProfiles",
            "iam:ListInstanceProfileTags",
            "iam:GetInstanceProfile",
            "iam:AddRoleToInstanceProfile",
            "iam:CreateInstanceProfile",
            "iam:DeleteInstanceProfile",
            "iam:RemoveRoleFromInstanceProfile",
            "iam:TagInstanceProfile",
            "iam:UntagInstanceProfile",
            "iam:ListInstanceProfilesForRole",
            "iam:PassRole"
          ],
          "Resource" : [
            "arn:aws:iam::*:role/ecs_compute_instance_role",
            "arn:aws:iam::*:instance-profile/ecs_compute_instance_role",
            "arn:aws:iam::*:role/aws_batch_service_role"
          ]
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "iam:CreatePolicy",
            "iam:GetPolicy",
            "iam:GetPolicyVersion",
            "iam:ListPolicyVersions",
            "iam:CreatePolicyVersion",
            "iam:DeletePolicy"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : "batch:*",
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ec2:CreateTags",
            "ec2:DescribeSubnets",
            "ec2:DescribeSecurityGroups",
            "ec2:DescribeKeyPairs",
            "ec2:DescribeImages",
            "ec2:DescribeInstanceTypes",
            "ec2:DescribeVpcs",
            "ec2:CreateLaunchTemplate",
            "ec2:CreateLaunchTemplateVersion",
            "ec2:DescribeLaunchTemplates",
            "ec2:DescribeLaunchTemplateVersions",
            "ec2:DeleteLaunchTemplate",
            "ec2:DeleteLaunchTemplateVersions",
            "logs:CreateLogStream",
            "logs:PutLogEvents",
            "logs:DescribeLogStreams"
          ],
          "Resource" : "*"
        },
        {
          "Effect" : "Allow",
          "Action" : [
            "ecr:GetAuthorizationToken",
            "ecr:BatchCheckLayerAvailability",
            "ecr:GetDownloadUrlForLayer",
            "ecr:BatchGetImage",
            "ecr:DescribeRepositories",
            "ecr:ListImages",
            "ecr:DescribeImages"
          ],
          "Resource" : "*"
        }
      ]
    })
  }
}
