.class public final Lcom/motorola/blur/provider/Email$BodyParts;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/motorola/blur/provider/Email$BodyPartColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BodyParts"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.motorola.blur.email.body"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.motorola.blur.email.body"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "message_id ASC"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->BODYPARTS:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/blur/provider/Email$BodyParts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
