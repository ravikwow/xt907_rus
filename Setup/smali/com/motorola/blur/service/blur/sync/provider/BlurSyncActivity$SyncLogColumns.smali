.class public interface abstract Lcom/motorola/blur/service/blur/sync/provider/BlurSyncActivity$SyncLogColumns;
.super Ljava/lang/Object;
.source "BlurSyncActivity.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/service/blur/sync/provider/BlurSyncActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncLogColumns"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/service/blur/sync/provider/BlurSyncActivity$SyncLogColumns$LevelNames;,
        Lcom/motorola/blur/service/blur/sync/provider/BlurSyncActivity$SyncLogColumns$LevelValues;,
        Lcom/motorola/blur/service/blur/sync/provider/BlurSyncActivity$SyncLogColumns$TagValues;
    }
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DETAILS:Ljava/lang/String; = "details"

.field public static final LEVEL:Ljava/lang/String; = "level"

.field public static final TAG:Ljava/lang/String; = "tag"
