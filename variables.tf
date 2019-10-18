
variable "vpc_id" {
        description     =        "The default VPC"
        type            =        "string"
        default         =        "vpc-00e607d1c5a180ed1"
}

variable "db_ami" {
        description     =       "providing the ami id"
        type            =       "string"
        default         =       "ami-07eece9374066bba7"
}

variable "security_groups" {
    type                =  "list"
    description         = "list of security groups"
    default             =  ["sg-0f569a4e90f9515a3", "sg-0c8f751c431129040", "sg-097d2a1f0ccd8a6fe", "sg-0921f75500ad2f255", "sg-067be79c45adab1ea", "sg-039f36bf766af3386", "sg-039f36bf766af3386"]
}

variable "type" {
        type            =       "string"
        default         =       "r5.2xlarge"
}

variable "subnet_id" {
        type            =       "string"
        default         =       "subnet-0337ec7d3fbb316c7"
}

variable "key_name" {
        type            =       "string"
        default         =       "ctestmt"
}

variable "tag_snapshot" {
	type		=	"string"
	default 	=	"snap-0bab7ac23f449e92e"
}
variable "oraclesid" {
	type 		=	"string"
	default		=	""
}

variable "tag_instance" {
	type 		=	"string"
	default		=	""
}
variable "policy" {
        type            =       "string"
        default         =       "CTEEc2InstanceProfile"
}
variable "tag_application" {
        type            =       "string"
        default         =       "CTE"
}
variable "tag_department" {
        type            =       "string"
        default         =       "CTE"
}
variable "enviornment" {
        type            =       "string"
        default         =       "prod"
}

variable "tag_owners" {
	type 		=	"string"
	default		=	"745078641086"
}

variable "tag_type" {
	type		=	"string"
	default		=	"gp2"
}
variable "tag_size" {
        type            =       "string"
        default         =       "16384"
}
variable "tag_az" {
	type		= 	"string"
	default		=	"us-east-1a"
}

variable "tag_term" {
	type		=	"string"
	default		=	"true"
}
