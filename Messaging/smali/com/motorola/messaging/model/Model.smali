.class public abstract Lcom/motorola/messaging/model/Model;
.super Ljava/lang/Object;
.source "Model.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/messaging/model/Model$CreationMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/motorola/messaging/model/Model;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCAL_LOG:Z


# instance fields
.field protected mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

.field protected mModelChangedObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/motorola/messaging/model/IModelChangedObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/motorola/messaging/logger/Logger;->MSG_DEVELOPMENT:Z

    sput-boolean v0, Lcom/motorola/messaging/model/Model;->LOCAL_LOG:Z

    .line 111
    new-instance v0, Lcom/motorola/messaging/model/Model$1;

    invoke-direct {v0}, Lcom/motorola/messaging/model/Model$1;-><init>()V

    sput-object v0, Lcom/motorola/messaging/model/Model;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    iput-object v0, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    .line 85
    sget-boolean v0, Lcom/motorola/messaging/model/Model;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model (parcel), this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string v1, "Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Model (parcel), enum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-class v1, Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/motorola/messaging/model/Model$CreationMode;

    iput-object v0, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 93
    return-void
.end method

.method protected constructor <init>(Lcom/motorola/messaging/model/Model$CreationMode;)V
    .locals 3
    .param p1, "creationMode"    # Lcom/motorola/messaging/model/Model$CreationMode;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/motorola/messaging/model/Model$CreationMode;->NONE:Lcom/motorola/messaging/model/Model$CreationMode;

    iput-object v0, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    .line 60
    sget-boolean v0, Lcom/motorola/messaging/model/Model;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Model, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creation mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    .line 67
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/motorola/messaging/model/Model;->LOCAL_LOG:Z

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/motorola/messaging/model/Model;->getType()I

    move-result v0

    return v0
.end method

.method public getCreationMode()Lcom/motorola/messaging/model/Model$CreationMode;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    return-object v0
.end method

.method public abstract getType()I
.end method

.method protected notifyModelChanged(Z)V
    .locals 4
    .param p1, "dataChanged"    # Z

    .prologue
    .line 191
    iget-object v3, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    monitor-enter v3

    .line 192
    :try_start_0
    iget-object v2, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/messaging/model/IModelChangedObserver;

    .line 193
    .local v1, "observer":Lcom/motorola/messaging/model/IModelChangedObserver;
    invoke-interface {v1, p0, p1}, Lcom/motorola/messaging/model/IModelChangedObserver;->onModelChanged(Lcom/motorola/messaging/model/Model;Z)V

    goto :goto_0

    .line 195
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "observer":Lcom/motorola/messaging/model/IModelChangedObserver;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    return-void
.end method

.method public registerModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/Model;->registerModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 170
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 201
    return-void
.end method

.method public unregisterAllModelChangedObservers()V
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/motorola/messaging/model/Model;->unregisterAllModelChangedObserversInDescendants()V

    .line 187
    iget-object v0, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 188
    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method public unregisterModelChangedObserver(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 1
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/motorola/messaging/model/Model;->mModelChangedObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    invoke-virtual {p0, p1}, Lcom/motorola/messaging/model/Model;->unregisterModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V

    .line 180
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/motorola/messaging/model/IModelChangedObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/motorola/messaging/model/IModelChangedObserver;

    .prologue
    .line 206
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    sget-boolean v0, Lcom/motorola/messaging/model/Model;->LOCAL_LOG:Z

    if-eqz v0, :cond_0

    .line 98
    const-string v0, "Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeToParcel, this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", model="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/motorola/messaging/model/Model;->describeContents()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", creation mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/motorola/messaging/logger/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/messaging/model/Model;->describeContents()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object v0, p0, Lcom/motorola/messaging/model/Model;->mCreationMode:Lcom/motorola/messaging/model/Model$CreationMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    return-void
.end method
