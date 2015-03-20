.class public final Lcom/motorola/blur/provider/DeviceSetup$Search;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Search"
.end annotation


# static fields
.field public static final ALL_ACCOUNTS:Landroid/net/Uri;

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SPECIFIC_PROVIDER_IMAGE_SIZE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 245
    const-string v0, "content://com.motorola.blur.setupprovider.search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Search;->CONTENT_URI:Landroid/net/Uri;

    .line 246
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Search;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "accounts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Search;->ALL_ACCOUNTS:Landroid/net/Uri;

    .line 247
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$Search;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "providers"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$Search;->SPECIFIC_PROVIDER_IMAGE_SIZE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
