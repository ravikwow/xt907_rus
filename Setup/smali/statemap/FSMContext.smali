.class public abstract Lstatemap/FSMContext;
.super Ljava/lang/Object;
.source "FSMContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final STATE_PROPERTY:Ljava/lang/String; = "State"

.field private static final serialVersionUID:J = 0x60000L


# instance fields
.field protected transient _debugFlag:Z

.field protected transient _debugStream:Ljava/io/PrintStream;

.field private transient _listeners:Ljava/beans/PropertyChangeSupport;

.field protected transient _name:Ljava/lang/String;

.field protected transient _previousState:Lstatemap/State;

.field protected transient _state:Lstatemap/State;

.field protected transient _stateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lstatemap/State;",
            ">;"
        }
    .end annotation
.end field

.field protected transient _transition:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lstatemap/State;)V
    .locals 2
    .param p1, "initState"    # Lstatemap/State;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "FSMContext"

    iput-object v0, p0, Lstatemap/FSMContext;->_name:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    .line 75
    iput-object v1, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lstatemap/FSMContext;->_debugFlag:Z

    .line 77
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v0, p0, Lstatemap/FSMContext;->_debugStream:Ljava/io/PrintStream;

    .line 78
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lstatemap/FSMContext;->_listeners:Ljava/beans/PropertyChangeSupport;

    .line 79
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "istream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 110
    new-instance v0, Ljava/beans/PropertyChangeSupport;

    invoke-direct {v0, p0}, Ljava/beans/PropertyChangeSupport;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lstatemap/FSMContext;->_listeners:Ljava/beans/PropertyChangeSupport;

    .line 112
    return-void
.end method


# virtual methods
.method public addStateChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 398
    iget-object v0, p0, Lstatemap/FSMContext;->_listeners:Ljava/beans/PropertyChangeSupport;

    const-string v1, "State"

    invoke-virtual {v0, v1, p1}, Ljava/beans/PropertyChangeSupport;->addPropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 400
    return-void
.end method

.method public clearState()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    iput-object v0, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    .line 275
    return-void
.end method

.method public emptyStateStack()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    .line 374
    :cond_0
    return-void
.end method

.method public abstract enterStartState()V
.end method

.method public getDebugFlag()Z
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lstatemap/FSMContext;->_debugFlag:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstatemap/FSMContext;->_debugStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDebugStream()Ljava/io/PrintStream;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lstatemap/FSMContext;->_debugStream:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lstatemap/FSMContext;->_debugStream:Ljava/io/PrintStream;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lstatemap/FSMContext;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousState()Lstatemap/State;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    return-object v0
.end method

.method public getTransition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lstatemap/FSMContext;->_transition:Ljava/lang/String;

    return-object v0
.end method

.method public isInTransition()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popState()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/EmptyStackException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 325
    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 328
    :cond_0
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 330
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    const-string v1, "POPPING ON EMPTY STATE STACK."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 334
    :cond_1
    new-instance v0, Ljava/util/EmptyStackException;

    invoke-direct {v0}, Ljava/util/EmptyStackException;-><init>()V

    throw v0

    .line 340
    :cond_2
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    iput-object v0, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    .line 341
    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lstatemap/State;

    iput-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    .line 343
    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_3

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    .line 348
    :cond_3
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v0

    if-ne v0, v1, :cond_4

    .line 350
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "POP TO STATE    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    invoke-virtual {v2}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 356
    :cond_4
    iget-object v0, p0, Lstatemap/FSMContext;->_listeners:Ljava/beans/PropertyChangeSupport;

    const-string v1, "State"

    iget-object v2, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    iget-object v3, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    invoke-virtual {v0, v1, v2, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 360
    return-void
.end method

.method public pushState(Lstatemap/State;)V
    .locals 4
    .param p1, "state"    # Lstatemap/State;

    .prologue
    .line 287
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 292
    :cond_0
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 294
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PUSH TO STATE   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    :cond_1
    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    if-nez v0, :cond_2

    .line 300
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    .line 303
    :cond_2
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    iput-object v0, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    .line 304
    iget-object v0, p0, Lstatemap/FSMContext;->_stateStack:Ljava/util/Stack;

    iget-object v1, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iput-object p1, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    .line 309
    iget-object v0, p0, Lstatemap/FSMContext;->_listeners:Ljava/beans/PropertyChangeSupport;

    const-string v1, "State"

    iget-object v2, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    iget-object v3, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    invoke-virtual {v0, v1, v2, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public removeStateChangeListener(Ljava/beans/PropertyChangeListener;)V
    .locals 2
    .param p1, "listener"    # Ljava/beans/PropertyChangeListener;

    .prologue
    .line 416
    iget-object v0, p0, Lstatemap/FSMContext;->_listeners:Ljava/beans/PropertyChangeSupport;

    const-string v1, "State"

    invoke-virtual {v0, v1, p1}, Ljava/beans/PropertyChangeSupport;->removePropertyChangeListener(Ljava/lang/String;Ljava/beans/PropertyChangeListener;)V

    .line 418
    return-void
.end method

.method public setDebugFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 221
    iput-boolean p1, p0, Lstatemap/FSMContext;->_debugFlag:Z

    .line 222
    return-void
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 231
    iput-object p1, p0, Lstatemap/FSMContext;->_debugStream:Ljava/io/PrintStream;

    .line 232
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lstatemap/FSMContext;->_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iput-object p1, p0, Lstatemap/FSMContext;->_name:Ljava/lang/String;

    .line 210
    :cond_0
    return-void
.end method

.method public setState(Lstatemap/State;)V
    .locals 4
    .param p1, "state"    # Lstatemap/State;

    .prologue
    .line 241
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugFlag()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lstatemap/FSMContext;->getDebugStream()Ljava/io/PrintStream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENTER STATE     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lstatemap/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    iput-object v0, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    .line 256
    :cond_1
    iput-object p1, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    .line 260
    iget-object v0, p0, Lstatemap/FSMContext;->_listeners:Ljava/beans/PropertyChangeSupport;

    const-string v1, "State"

    iget-object v2, p0, Lstatemap/FSMContext;->_previousState:Lstatemap/State;

    iget-object v3, p0, Lstatemap/FSMContext;->_state:Lstatemap/State;

    invoke-virtual {v0, v1, v2, v3}, Ljava/beans/PropertyChangeSupport;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 263
    return-void
.end method
