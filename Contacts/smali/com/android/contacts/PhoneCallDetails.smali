.class public Lcom/android/contacts/PhoneCallDetails;
.super Ljava/lang/Object;
.source "PhoneCallDetails.java"


# instance fields
.field public final callTypes:[I

.field public final cnapName:Ljava/lang/String;

.field public final contactUri:Landroid/net/Uri;

.field public final countryIso:Ljava/lang/String;

.field public final date:J

.field public final duration:J

.field public final formattedNumber:Ljava/lang/CharSequence;

.field public final geocode:Ljava/lang/String;

.field public final name:Ljava/lang/CharSequence;

.field public final number:Ljava/lang/CharSequence;

.field public final numberLabel:Ljava/lang/CharSequence;

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "name"    # Ljava/lang/CharSequence;
    .param p11, "numberType"    # I
    .param p12, "numberLabel"    # Ljava/lang/CharSequence;
    .param p13, "contactUri"    # Landroid/net/Uri;
    .param p14, "photoUri"    # Landroid/net/Uri;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 76
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 77
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    .line 80
    iput-wide p6, p0, Lcom/android/contacts/PhoneCallDetails;->date:J

    .line 81
    iput-wide p8, p0, Lcom/android/contacts/PhoneCallDetails;->duration:J

    .line 82
    iput-object p10, p0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 83
    iput p11, p0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    .line 84
    iput-object p12, p0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 85
    iput-object p13, p0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 86
    iput-object p14, p0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "name"    # Ljava/lang/CharSequence;
    .param p11, "numberType"    # I
    .param p12, "numberLabel"    # Ljava/lang/CharSequence;
    .param p13, "contactUri"    # Landroid/net/Uri;
    .param p14, "photoUri"    # Landroid/net/Uri;
    .param p15, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 96
    iput-object p2, p0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 97
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 99
    iput-object p5, p0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    .line 100
    iput-wide p6, p0, Lcom/android/contacts/PhoneCallDetails;->date:J

    .line 101
    iput-wide p8, p0, Lcom/android/contacts/PhoneCallDetails;->duration:J

    .line 102
    iput-object p10, p0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 103
    iput p11, p0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    .line 104
    iput-object p12, p0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 105
    iput-object p13, p0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 106
    iput-object p14, p0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 107
    iput-object p15, p0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/String;)V
    .locals 16
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p3, "countryIso"    # Ljava/lang/String;
    .param p4, "geocode"    # Ljava/lang/String;
    .param p5, "callTypes"    # [I
    .param p6, "date"    # J
    .param p8, "duration"    # J
    .param p10, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v10, ""

    const/4 v11, 0x0

    const-string v12, ""

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-object/from16 v15, p10

    invoke-direct/range {v0 .. v15}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 115
    return-void
.end method
