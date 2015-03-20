.class public Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhoneLookup;
.super Ljava/lang/Object;
.source "BlurContactsExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneLookup"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final DATA_ID:Ljava/lang/String; = "data_id"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1731
    sget-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "phone_lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1723
    return-void
.end method
