.class public Lcom/motorola/blur/service/blur/BSSettings;
.super Ljava/lang/Object;
.source "BSSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/BSSettings$WriteableKeys;,
        Lcom/motorola/blur/service/blur/BSSettings$ReadableKeys;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.blur.service.blur.bsmotherprovider"

.field public static final COMMA_DELIMITER:Ljava/lang/String; = ","

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final POLLING_INTERVALS_DELIM:Ljava/lang/String; = ","

.field public static final VALUE_COL:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "content://com.motorola.blur.service.blur.bsmotherprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/service/blur/BSSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getSetting(Landroid/content/ContentResolver;Lcom/motorola/blur/service/blur/BSSettings$ReadableKeys;)Ljava/lang/String;
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Lcom/motorola/blur/service/blur/BSSettings$ReadableKeys;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 57
    sget-object v0, Lcom/motorola/blur/service/blur/BSSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "value"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 60
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 62
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_0
    :goto_0
    return-object v3

    .line 66
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static setSetting(Landroid/content/ContentResolver;Lcom/motorola/blur/service/blur/BSSettings$WriteableKeys;Ljava/lang/String;)Z
    .locals 6
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Lcom/motorola/blur/service/blur/BSSettings$WriteableKeys;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v0, "values":Landroid/content/ContentValues;
    const-string v3, "value"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v3, Lcom/motorola/blur/service/blur/BSSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
