.class public interface abstract Lcom/android/deskclock/provider/ClockContract$InstancesColumns;
.super Ljava/lang/Object;
.source "ClockContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/android/deskclock/provider/ClockContract$AlarmSettingColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/deskclock/provider/ClockContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "InstancesColumns"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "content://com.android.deskclock/instances"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/deskclock/provider/ClockContract$InstancesColumns;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
