.class public interface abstract Lcom/motorola/blur/provider/Email$AddressHistory;
.super Ljava/lang/Object;
.source "Email.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AddressHistory"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final ACCOUNT_ID_IDX:I = 0x2

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.motorola.blur.email.history"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.motorola.blur.email.history"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "email ASC"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final EMAIL_IDX:I = 0x3

.field public static final FIRST_NAME:Ljava/lang/String; = "first_name"

.field public static final FIRST_NAME_IDX:I = 0x4

.field public static final LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final LAST_MODIFIED_IDX:I = 0x6

.field public static final LAST_NAME:Ljava/lang/String; = "last_name"

.field public static final LAST_NAME_IDX:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 554
    sget-object v0, Lcom/motorola/blur/provider/Email$ContentUri;->ADDRESS_HISTORY:Landroid/net/Uri;

    sput-object v0, Lcom/motorola/blur/provider/Email$AddressHistory;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
