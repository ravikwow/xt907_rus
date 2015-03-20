.class public Lcom/motorola/blur/provider/DeviceSetup$AppSettings$ConflictResolver;
.super Ljava/lang/Object;
.source "DeviceSetup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/provider/DeviceSetup$AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConflictResolver"
.end annotation


# static fields
.field public static final ACTION_RESOLVER:Ljava/lang/String; = "com.motorola.blur.AppSettingsResolver"

.field public static final CONFLICT_PATH:Ljava/lang/String; = "resolve"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTRA_CONFLICTS:Ljava/lang/String; = "extra_conflicts"

.field public static final LOCAL_VALUE:Ljava/lang/String; = "local_value"

.field public static final PACKAGE_PARAM:Ljava/lang/String; = "package"

.field public static final SERVER_VALUE:Ljava/lang/String; = "server_value"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1141
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "resolve"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/blur/provider/DeviceSetup$AppSettings$ConflictResolver;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveAppSettings(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 1172
    new-instance v0, Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v7

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 1173
    .local v0, "contentValues":Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1174
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1175
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1176
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1179
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$AppSettings$ConflictResolver;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 1180
    .local v5, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v7, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1182
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1184
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v4, v0, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1186
    return-void
.end method

.method public static resolveAppSettings(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1199
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-static {p0, v0}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings$ConflictResolver;->resolveAppSettings(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1202
    return-void
.end method
