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

.field public final numberPresentation:I

.field public final numberType:I

.field public final photoUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberPresentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "name"    # Ljava/lang/CharSequence;
    .param p12, "numberType"    # I
    .param p13, "numberLabel"    # Ljava/lang/CharSequence;
    .param p14, "contactUri"    # Landroid/net/Uri;
    .param p15, "photoUri"    # Landroid/net/Uri;
    .param p16, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/android/contacts/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    .line 109
    iput p2, p0, Lcom/android/contacts/PhoneCallDetails;->numberPresentation:I

    .line 110
    iput-object p3, p0, Lcom/android/contacts/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    .line 111
    iput-object p4, p0, Lcom/android/contacts/PhoneCallDetails;->countryIso:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lcom/android/contacts/PhoneCallDetails;->geocode:Ljava/lang/String;

    .line 113
    iput-object p6, p0, Lcom/android/contacts/PhoneCallDetails;->callTypes:[I

    .line 114
    iput-wide p7, p0, Lcom/android/contacts/PhoneCallDetails;->date:J

    .line 115
    iput-wide p9, p0, Lcom/android/contacts/PhoneCallDetails;->duration:J

    .line 116
    iput-object p11, p0, Lcom/android/contacts/PhoneCallDetails;->name:Ljava/lang/CharSequence;

    .line 117
    iput p12, p0, Lcom/android/contacts/PhoneCallDetails;->numberType:I

    .line 118
    iput-object p13, p0, Lcom/android/contacts/PhoneCallDetails;->numberLabel:Ljava/lang/CharSequence;

    .line 119
    iput-object p14, p0, Lcom/android/contacts/PhoneCallDetails;->contactUri:Landroid/net/Uri;

    .line 120
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetails;->photoUri:Landroid/net/Uri;

    .line 121
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/contacts/PhoneCallDetails;->cnapName:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/String;)V
    .locals 17
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "numberPresentation"    # I
    .param p3, "formattedNumber"    # Ljava/lang/CharSequence;
    .param p4, "countryIso"    # Ljava/lang/String;
    .param p5, "geocode"    # Ljava/lang/String;
    .param p6, "callTypes"    # [I
    .param p7, "date"    # J
    .param p9, "duration"    # J
    .param p11, "cnapName"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v11, ""

    const/4 v12, 0x0

    const-string v13, ""

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v16, p11

    invoke-direct/range {v0 .. v16}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    .line 131
    return-void
.end method
