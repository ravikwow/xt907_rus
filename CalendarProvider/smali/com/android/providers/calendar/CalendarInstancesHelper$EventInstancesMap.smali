.class public final Lcom/android/providers/calendar/CalendarInstancesHelper$EventInstancesMap;
.super Ljava/util/HashMap;
.source "CalendarInstancesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarInstancesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventInstancesMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1
    .param p1, "syncIdKey"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .line 53
    .local v0, "instances":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;

    .end local v0    # "instances":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-direct {v0}, Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;-><init>()V

    .line 55
    .restart local v0    # "instances":Lcom/android/providers/calendar/CalendarInstancesHelper$InstancesList;
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
