.class public final Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$EmailCommunicationHistory;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"

# interfaces
.implements Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$BaseCommonColumns;
.implements Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds$CommunicationHistoryColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$CommonBlurDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmailCommunicationHistory"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "data5"

.field public static final COMMUNICATION_TYPE:I = 0x1

.field public static final EMAIL_ID:Ljava/lang/String; = "data6"

.field public static final PROVIDER_ID:Ljava/lang/String; = "data7"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    return-void
.end method
